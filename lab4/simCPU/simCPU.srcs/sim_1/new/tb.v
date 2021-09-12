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
reg INT0;
simCPU_wrapper u(.clk(clk),
.rst(rst),.INT0(INT0));
always #5 clk=~clk;
initial begin
clk = 0;
rst= 1;
INT0=0;
#1;
rst=0;
#63;
INT0=1;
#1;
INT0=0;
#42;
INT0=1;
#1;
INT0=0;
end
endmodule
