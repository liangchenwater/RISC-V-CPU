`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/15 12:11:41
// Design Name: 
// Module Name: clk_div_tb
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


module clk_div_tb;
reg clk;
reg rst;
reg SW2;

wire [31:0] clkdiv;
wire Clk_CPU;

clk_div clk_div_u(
         .clk(clk),
         .rst(rst),
         .SW2(SW2),
         .clkdiv(clkdiv),
         .Clk_CPU(Clk_CPU)
   );
   
 always #10 clk = ~clk;
 
 initial begin
     #10
     clk = 0;
     rst = 1;
     SW2 = 1;
     
     #1000;
     rst = 0;
     #1000;
     SW2 = 0;
//     #8000;
//     $stop();
     
     
     
     
end
     

endmodule
