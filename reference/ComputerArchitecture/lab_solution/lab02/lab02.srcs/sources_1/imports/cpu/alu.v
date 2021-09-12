`include "define.vh"


/**
 * Arithmetic and Logic Unit for MIPS CPU.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module alu (
	input wire [31:0] a, b,  // two operands
	input wire [3:0] oper,  // operation type
	output reg [31:0] result  // calculation result
	);
	
	`include "mips_define.vh"
	
	always @(*) begin
		result = 0;
		case (oper)
			EXE_ALU_ADD: begin
				result = a + b;
			end
			EXE_ALU_SUB: begin
				result = a - b;
			end
			EXE_ALU_SLT: begin
				result = $signed(a) < $signed(b);
			end
			EXE_ALU_AND: begin
				result = a & b;
			end
			EXE_ALU_OR: begin
				result = a | b;
			end
		endcase
	end
	
endmodule
