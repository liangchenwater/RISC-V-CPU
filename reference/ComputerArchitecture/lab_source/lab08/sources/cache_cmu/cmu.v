`timescale 1ns / 1ps


module cmu (
	input wire clk,  // clock
	input wire rst,  // reset
	input wire [31:0] addr_rw,  // address for data read or write
	input wire en_r,  // read start signal
	output wire [31:0] data_r,  // data read out
	input wire en_w,  // write start signal
	input wire [31:0] data_w,  // data write in
	output wire stall,  // stall other component when CMU is busy
	// memory interfaces
	output reg mem_cs_o,
	output reg mem_we_o,
	output reg [31:0] mem_addr_o,
	input wire [31:0] mem_data_i,
	output reg [31:0] mem_data_o,
	input wire mem_ack_i
	);
	
	parameter
		TAG_BITS = 22,
		LINE_WORDS = 4,
		LINE_WORDS_WIDTH = 2;
	
	// cache core
	reg cache_store;
	reg cache_edit;
	reg [31:0] cache_addr;
	reg [31:0] cache_din;
	wire [31:0] cache_dout;
	wire [TAG_BITS-1:0] cache_tag;
	wire cache_hit, cache_valid, cache_dirty;
	
	cache #(
		.TAG_BITS(TAG_BITS),
		.LINE_WORDS(LINE_WORDS),
		.LINE_WORDS_WIDTH(LINE_WORDS_WIDTH)
		) CACHE (
		.clk(clk),
		.rst(rst),
		.addr(cache_addr),
		.store(cache_store),
		.edit(cache_edit),
		.invalid(1'b0),
		.din(cache_din),
		.hit(cache_hit),
		.dout(cache_dout),
		.valid(cache_valid),
		.dirty(cache_dirty),
		.tag(cache_tag)
	);
	
	localparam
		S_IDLE = 0,
		S_BACK = 1,
		S_BACK_WAIT = 2,
		S_FILL = 3,
		S_FILL_WAIT = 4;
	
	reg [2:0] state = 0;
	reg [2:0] next_state;
	reg [LINE_WORDS_WIDTH-1:0] word_count = 0;
	reg [LINE_WORDS_WIDTH-1:0] next_word_count;
	
	assign data_r = cache_dout;
	
	// next state logic
	always @(*) begin
		next_word_count = 0;
		next_state = S_IDLE;
		if (rst) begin
			next_word_count = 0;
			next_state = S_IDLE;
		end
		else case (state)
			S_IDLE: begin
				if (en_r || en_w) begin
					if (cache_hit)
						next_state = S_IDLE;
					else if (cache_valid && cache_dirty)
						next_state = S_BACK;
					else
						next_state = S_FILL;
				end
			end
			S_BACK: begin
				if (mem_ack_i)
					next_word_count = word_count + 1'h1;
				else
					next_word_count = word_count;
				if (mem_ack_i && word_count == {LINE_WORDS_WIDTH{1'b1}})
					next_state = S_BACK_WAIT;
				else
					next_state = S_BACK;
			end
			S_BACK_WAIT: begin
				next_word_count = 0;
				next_state = S_FILL;
			end
			S_FILL: begin
				if (mem_ack_i)
					next_word_count = word_count + 1'h1;
				else
					next_word_count = word_count;
				if (mem_ack_i && word_count == {LINE_WORDS_WIDTH{1'b1}})
					next_state = S_FILL_WAIT;
				else
					next_state = S_FILL;
			end
			S_FILL_WAIT: begin
				next_word_count = 0;
				next_state = S_IDLE;
			end
		endcase
	end
	
	always @(posedge clk) begin
		if (rst) begin
			state <= 0;
			word_count <= 0;
		end
		else begin
			state <= next_state;
			word_count <= next_word_count;
		end
	end
	
	// cache control
	reg [LINE_WORDS_WIDTH-1:0] word_count_buf;
	always @(posedge clk) begin
		if (rst)
			word_count_buf <= 0;
		else
			word_count_buf <= word_count;
	end
	
	always @(*) begin
		cache_store = 0;
		cache_edit = 0;
		cache_addr = 0;
		cache_din = 0;
		case (next_state)
			S_IDLE: begin
				cache_addr = addr_rw;
				cache_edit = en_w;
				cache_din = data_w;
			end
			S_BACK, S_BACK_WAIT: begin
				cache_addr = {addr_rw[31:LINE_WORDS_WIDTH+2], next_word_count, 2'b00};
			end
			S_FILL, S_FILL_WAIT: begin
				cache_addr = {addr_rw[31:LINE_WORDS_WIDTH+2], word_count_buf, 2'b00};
				cache_din = mem_data_i;
				cache_store = mem_ack_i;
			end
		endcase
	end
	
	// memory control
	always @(posedge clk) begin
		mem_cs_o <= 0;
		if (rst) begin
			mem_we_o <= 0;
			mem_addr_o <= 0;
		end
		else case (next_state)
			S_IDLE, S_BACK_WAIT, S_FILL_WAIT: begin
				mem_cs_o <= 0;
				mem_we_o <= 0;
				mem_addr_o <= 0;
			end
			S_BACK: begin
				mem_cs_o <= 1;
				mem_we_o <= 1;
				mem_addr_o <= {cache_tag, addr_rw[31-TAG_BITS:LINE_WORDS_WIDTH+2], next_word_count, 2'b00};
			end
			S_FILL: begin
				mem_cs_o <= 1;
				mem_we_o <= 0;
				mem_addr_o <= {addr_rw[31:LINE_WORDS_WIDTH+2], next_word_count, 2'b00};
			end
		endcase
	end
	
	always @(*) begin
		mem_data_o = cache_dout;
	end
	
	assign stall = (next_state != S_IDLE);
	
endmodule
