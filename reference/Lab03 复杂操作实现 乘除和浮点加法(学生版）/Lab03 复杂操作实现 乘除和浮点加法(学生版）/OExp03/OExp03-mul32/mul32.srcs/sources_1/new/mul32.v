`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/25 14:03:11
// Design Name: 
// Module Name: mul32
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


module mul32(
  input clk,
  input rst,
  input [31:0] multiplicand,
  input [31:0] multiplier,
  input start,
  output [63:0] product,
  output finish
    );
    
endmodule