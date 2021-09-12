`include "define.vh"


/**
 * Register File for MIPS CPU.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module regfile (
	input wire clk,  // main clock
	// debug
	`ifdef DEBUG
	input wire [4:0] debug_addr,  // debug address
	output wire [31:0] debug_data,  // debug data
	`endif
	// read channel A
	input wire [4:0] addr_a,
	output wire [31:0] data_a,
	// read channel B
	input wire [4:0] addr_b,
	output wire [31:0] data_b,
	// write channel W
	input wire en_w,
	input wire [4:0] addr_w,
	input wire [31:0] data_w
	);
	
	reg [31:0] regfile [1:31];  // $zero is always zero
		
	// write
	always @(posedge clk) begin
		if (en_w && addr_w != 0)
			regfile[addr_w] <= data_w;
	end
	
	// read
	assign data_a = (addr_a == 0) ? 0 : regfile[addr_a];
	assign data_b = (addr_b == 0) ? 0 : regfile[addr_b];
//	always @(*) begin
//		data_a = addr_a == 0 ? 0 : regfile[addr_a];
//		data_b = addr_b == 0 ? 0 : regfile[addr_b];
//	end
	
	// debug
	`ifdef DEBUG
	assign debug_data = (debug_addr == 0) ? 0 : regfile[debug_addr];
//	always @(*) begin
//		debug_data = debug_addr == 0 ? 0 : regfile[debug_addr];
//	end
	`endif
	
endmodule
