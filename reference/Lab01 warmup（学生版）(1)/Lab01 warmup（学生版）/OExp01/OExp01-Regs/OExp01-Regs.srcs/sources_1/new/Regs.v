`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/19 14:49:38
// Design Name: 
// Module Name: Regs
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


module Regs(    input clk,
				input rst,
				input [4:0] Rs1_addr, 
				input [4:0] Rs2_addr, 
				input [4:0] Wt_addr, 
				input [31:0]Wt_data, 
				input RegWrite, 
				output [31:0] Rs1_data, 
				output [31:0] Rs2_data
    );
    
endmodule
