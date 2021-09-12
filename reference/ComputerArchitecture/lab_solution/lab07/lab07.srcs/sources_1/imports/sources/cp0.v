`include "define.vh"


/**
 * Co-processor 0 for MIPS 5-stage pipeline CPU.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module cp0 (
	input wire clk,  // main clock
	// debug
	`ifdef DEBUG
	input wire [4:0] debug_addr,  // debug address
	output reg [31:0] debug_data,  // debug data
	`endif
	// operations (read in ID stage and write in EXE stage)
	input wire [1:0] oper,  // CP0 operation type
	input wire [4:0] addr_r,  // read address
	output reg [31:0] data_r,  // read data
	input wire [4:0] addr_w,  // write address
	input wire [31:0] data_w,  // write data
	// exceptions (check exceptions in MEM stage)
	input wire rst,  // synchronous reset
	input wire ir_en,  // interrupt enable
	input wire ir_in,  // external interrupt input
	input wire [31:0] ret_addr,  // target instruction address to store when interrupt occurred
	output reg jump_en,  // force jump enable signal when interrupt authorised or ERET occurred
	output reg [31:0] jump_addr  // target instruction address to jump to
	);
	
	`include "mips_define.vh"
	
	reg [31:0] epcr = 0, ehbr = 0, tcr = 0;
	
	// debug
	`ifdef DEBUG
	always @(*) begin
		case (debug_addr)
			CP0_EPCR: debug_data = epcr;
			CP0_EHBR: debug_data = ehbr;
			CP0_TCR: debug_data = tcr;
			default: debug_data = 0;
		endcase
	end
	`endif
	
	// read
	always @(*) begin
		case (addr_r)
			CP0_EPCR: data_r = epcr;
			CP0_EHBR: data_r = ehbr;
			CP0_TCR: data_r = tcr;
			default: data_r = 0;
		endcase
	end
	
	// interrupt determination
	wire ir;
	reg ir_wait = 0, ir_valid = 1;
	reg eret = 0;
	
	always @(posedge clk) begin
		if (rst)
			ir_wait <= 0;
		else if (ir_in)
			ir_wait <= 1;
		else if (eret)
			ir_wait <= 0;
	end
	
	always @(posedge clk) begin
		if (rst)
			ir_valid <= 1;
		else if (eret)
			ir_valid <= 1;
		else if (ir)
			ir_valid <= 0;  // prevent exception reenter
	end
	
	assign ir = ir_en & ir_wait & ir_valid;
	
	// Exception Handler Base Register
	always @(posedge clk) begin
		if (rst)
			ehbr <= {PC_EHBR[31:2], 2'b00};
		else if (oper == EXE_CP_STORE && addr_w == CP0_EHBR)
			ehbr <= data_w;
	end
	
	// Exception Program Counter Register
	always @(posedge clk) begin
		if (rst)
			epcr <= {PC_RESET[31:2], 2'b00};
		else if (ir)
			epcr <= {ret_addr[31:2], 2'b0};
		else if (oper == EXE_CP_STORE && addr_w == CP0_EPCR)
			epcr <= data_w;
		else if (oper == EXE_CP0_ERET)
			epcr <= {PC_RESET[31:2], 2'b00};
	end
	
	// jump determination
	always @(*) begin
		jump_en = 0;
		jump_addr = 0;
		eret = 0;
		if (rst) begin
			jump_en = 1;
			jump_addr = {PC_RESET[31:2], 2'b00};
		end
		else if (ir) begin
			jump_en = 1;
			jump_addr = {ehbr[31:2], 2'b00};
		end
		else if (oper == EXE_CP0_ERET) begin
			eret = 1;
			jump_en = 1;
			jump_addr = {epcr[31:2], 2'b00};
		end
	end
	
	// Tick Counter Register
	always @(posedge clk) begin
		if (rst)
			tcr <= 0;
		else
			tcr <= tcr + 1'h1;
	end
	
endmodule
