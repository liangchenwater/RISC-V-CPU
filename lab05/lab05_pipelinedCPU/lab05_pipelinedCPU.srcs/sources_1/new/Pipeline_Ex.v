`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 19:55:37
// Design Name: 
// Module Name: Pipeline_Ex
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


module Pipeline_Ex(
input wire[31:0] PC_in_Ex,
input wire[31:0] Imm_in_Ex,
input wire[31:0] Rs1_in_Ex,
input wire[2:0] ALU_control_in_Ex,
input wire[31:0] Rs2_in_Ex,
input wire ALUSrc_B_in_Ex,
output reg[31:0] PC4_out_Ex,
output reg[31:0] PC_out_Ex,
output [31:0] ALU_out_Ex,
output  zero_out_Ex,
output reg[31:0] Rs2_out_Ex
    );
    reg[31:0] ALU_B;
    always @(*) begin
    PC4_out_Ex<=PC_in_Ex+4;
    PC_out_Ex<=PC_in_Ex+Imm_in_Ex;
    Rs2_out_Ex<=Rs2_in_Ex;
    if(ALUSrc_B_in_Ex)  ALU_B <= Imm_in_Ex;
    else ALU_B <= Rs2_in_Ex;
    end
    alu ALU(.A(Rs1_in_Ex),
    .B(ALU_B),
    .ALU_operation(ALU_control_in_EX),
    .res(ALU_out_Ex),
    .zero(zero_out_Ex));
    
endmodule
 