`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/25 17:03:13
// Design Name: 
// Module Name: float_add
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module float_add(
	input clk, 
	input rst,
	input [31:0] A,
	input [31:0] B,
	input [1:0] c,      // 00 +, 01 -, 10 *, 11 /
	input en,			// en = 1, begin
	output reg [31:0] result,
	output reg fin		// fin = 1 when finish
    );
	 
endmodule