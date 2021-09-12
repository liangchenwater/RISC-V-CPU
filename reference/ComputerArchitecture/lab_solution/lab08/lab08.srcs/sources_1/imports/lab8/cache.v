`timescale 1ns / 1ps


module cache (
	input wire clk,  // clock
	input wire rst,  // reset
	input wire [31:0] addr,  // address
	input wire store,  // set valid to 1 and reset dirty to 0
	input wire edit,  // set dirty to 1
	input wire invalid,  // reset valid to 0
	input wire [31:0] din,  // data write in
	output wire hit,  // hit or not
	output reg [31:0] dout,  // data read out
	output reg valid,  // valid bit
	output reg dirty,  // dirty bit
	output reg [21:0] tag  // tag bits
	);
	
	parameter
		TAG_BITS = 22,
		LINE_WORDS = 4,
		LINE_WORDS_WIDTH = 2;
	localparam
		ADDR_BITS = 32,
		WORD_BYTES = 4;
	localparam
		WORD_BITS = 8 * WORD_BYTES,  // 32
		WORD_BYTES_WIDTH = 2,
		LINE_INDEX_WIDTH = ADDR_BITS - TAG_BITS - LINE_WORDS_WIDTH - WORD_BYTES_WIDTH,  // 6
		LINE_NUM = 1 << LINE_INDEX_WIDTH;  // 64
	
	reg [LINE_NUM-1:0] inner_valid = 0;
	reg [LINE_NUM-1:0] inner_dirty = 0;
	reg [TAG_BITS-1:0] inner_tag [0:LINE_NUM-1];
	reg [WORD_BITS-1:0] inner_data [0:LINE_NUM*LINE_WORDS-1];
	
	always @(negedge clk) begin
		dout <= inner_data[addr[ADDR_BITS-TAG_BITS-1:WORD_BYTES_WIDTH]];
		if (store || (edit && hit))
			inner_data[addr[ADDR_BITS-TAG_BITS-1:WORD_BYTES_WIDTH]] <= din;
	end
	
	always @(negedge clk) begin
		if (rst) begin
			inner_valid <= 0;
			inner_dirty <= 0;
		end
		else if (invalid) begin
			inner_valid[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]] <= 0;
			inner_dirty[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]] <= 0;
		end
		else if (store) begin
			inner_valid[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]] <= 1;
			inner_dirty[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]] <= 0;
			inner_tag[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]] <= addr[ADDR_BITS-1:ADDR_BITS-TAG_BITS];
		end
		else if (edit) begin
			inner_dirty[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]] <= 1;
			inner_tag[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]] <= addr[ADDR_BITS-1:ADDR_BITS-TAG_BITS];
		end
	end
	
	always @(negedge clk) begin
		valid <= inner_valid[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]];
		dirty <= inner_dirty[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]];
		tag <= inner_tag[addr[ADDR_BITS-TAG_BITS-1:LINE_WORDS_WIDTH+WORD_BYTES_WIDTH]];
	end
	
	assign hit = valid & (tag == addr[ADDR_BITS-1:ADDR_BITS-TAG_BITS]);
	
endmodule
