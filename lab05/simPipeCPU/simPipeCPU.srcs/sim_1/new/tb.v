`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/18 15:12:26
// Design Name: 
// Module Name: tb
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


module tb();
reg clk;
reg rst;
simPipeCPU_wrapper u(.clk(clk),
.rst(rst));
always #5 clk=~clk;
initial begin
clk = 0;
rst= 1;
#1;
rst=0;
end
endmodule
