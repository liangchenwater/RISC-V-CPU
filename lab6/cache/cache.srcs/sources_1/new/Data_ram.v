`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 17:06:07
// Design Name: 
// Module Name: Data_ram
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


module Data_ram(
input clk,
input en,
input wt,
input rst,
input[6:0] addr,
input[127:0] din,
output reg[127:0] dout
);
reg[127:0] cache_data[0:127];
reg i;




always @ (posedge clk) begin
if(en) begin
if(wt) begin cache_data[addr]<=din; end
dout<=cache_data[addr];
end
end
endmodule
