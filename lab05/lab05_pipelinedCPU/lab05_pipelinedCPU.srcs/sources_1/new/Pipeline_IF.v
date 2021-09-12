`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 18:33:55
// Design Name: 
// Module Name: Pipiline_IF
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


module Pipeline_IF(
input wire clk_IF,
input wire rst_IF,
input wire en_IF,
input wire PCSrc,
input wire[31:0] PC_in_IF,
output reg[31:0] PC_out_IF
);
reg[31:0] PC_selected_IF;
wire [31:0] PC_out_IF_0;

always @ (posedge clk_IF) begin
if(PCSrc) PC_selected_IF <= PC_in_IF;
else PC_selected_IF <= PC_out_IF_0+4;
PC_out_IF<=PC_out_IF_0;
end

REG32 PC(.clk(clk_IF),
.rst(rst_IF),
.CE(en_IF),
.D(PC_selected_IF),
.Q(PC_out_IF_0)
);
endmodule
