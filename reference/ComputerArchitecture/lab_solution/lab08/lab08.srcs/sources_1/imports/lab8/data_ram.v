module data_ram (
	input wire clk,
	input wire rst,
	input wire cs,
	input wire we,
	input wire [31:0] addr,
	input wire [31:0] din,
	output reg [31:0] dout,
	output reg stall,
	output reg ack
	);
	
	parameter
		ADDR_WIDTH = 5,
		CLK_DELAY = 8;
	
	reg [31:0] data [0:(1<<ADDR_WIDTH)-1];
	reg [31:0] addr_buf = 0;
	reg [3:0] delay_count = 0;
	
	genvar i;
	generate for (i=0; i<(1<<ADDR_WIDTH); i=i+1) begin: RAM_INIT
		initial data[i] = i;
	end
	endgenerate
	
	always @(posedge clk) begin
		if (rst)
			addr_buf <= 0;
		else
			addr_buf <= addr;
	end
	
	localparam
		S_IDLE = 0,
		S_READ = 1,
		S_WRITE = 2;
	
	reg [1:0] state = 0;
	
	always @(posedge clk) begin
		dout <= 0;
		ack <= 0;
		state <= S_IDLE;
		if (rst || ~cs) begin
			delay_count <= 0;
		end
		else case (state)
			S_IDLE: begin
				delay_count <= 0;
				if (we)
					state <= S_WRITE;
				else
					state <= S_READ;
			end
			S_READ: begin
				if (delay_count == CLK_DELAY-2) begin
					dout <= data[addr];
					ack <= 1;
				end
				else if (addr_buf != addr) begin
					delay_count <= 0;
					state <= S_READ;
				end
				else begin
					delay_count <= delay_count + 1'h1;
					state <= S_READ;
				end
			end
			S_WRITE: begin
				if (delay_count == CLK_DELAY-2) begin
					data[addr] <= din;
					ack <= 1;
				end
				else if (addr_buf != addr) begin
					delay_count <= 0;
					state <= S_WRITE;
				end
				else begin
					delay_count <= delay_count + 1'h1;
					state <= S_WRITE;
				end
			end
		endcase
	end
	
	always @(*) begin
		stall = cs & (~ack);
	end
	
endmodule
