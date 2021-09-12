`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 17:19:46
// Design Name: 
// Module Name: Tag_ram
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


module Tag_ram(
input clk,
input en,
input wt,
input rst,
input[6:0] addr,
input[25:0] din,
output reg[25:0] dout
    );
    
reg[25:0] cache_tag[0:127];
reg i;



always @ (posedge clk or posedge rst) begin
if(en) begin
if(wt) begin cache_tag[addr]<=din; end
dout<=cache_tag[addr];
end
end
endmodule   
