`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 20:48:24
// Design Name: 
// Module Name: ID_reg_Ex
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


module ID_reg_Ex(
  input clk_IDEX,
  input rst_IDEX,
  input en_IDEX,
  input [31:0]PC_in_IDEX,
  input [4:0]Rd_addr_IDEX,
  input [31:0]Rs1_in_IDEX,
  input [31:0]Rs2_in_IDEX,
  input [31:0]Imm_in_IDEX,
  input ALUSrc_B_in_IDEX,
  input [2:0]ALU_control_in_IDEX,
  input Branch_in_IDEX,
  input BranchN_in_IDEX,
  input MemRW_in_IDEX,
  input Jump_in_IDEX,
  input [1:0]MemtoReg_in_IDEX,
  input RegWrite_in_IDEX,
  input NOP_IDEX,
  input valid_in_IDEX,
  output reg [31:0]PC_out_IDEX,
  output reg [4:0]Rd_addr_out_IDEX,
  output reg [31:0]Rs1_out_IDEX,
  output reg [31:0]Rs2_out_IDEX,
  output reg [31:0]Imm_out_IDEX,
  output reg ALUSrc_B_out_IDEX,
  output reg [2:0]ALU_control_out_IDEX,
  output reg Branch_out_IDEX,
  output reg BranchN_out_IDEX,
  output reg MemRW_out_IDEX,
  output reg Jump_out_IDEX,
  output reg [1:0]MemtoReg_out_IDEX,
  output reg RegWrite_out_IDEX,
  output reg valid_out_IDEX
    );
    always @ (posedge clk_IDEX) begin
    if(NOP_IDEX)begin
    PC_out_IDEX<=32'h00000000;
    valid_out_IDEX<=0;
    Rd_addr_out_IDEX<=0;
    Rs1_out_IDEX<=0;
    Rs2_out_IDEX<=0;
    Imm_out_IDEX<=0;
    ALUSrc_B_out_IDEX<=0;
    ALU_control_out_IDEX<=3'b010;
    Branch_out_IDEX<=0;
    BranchN_out_IDEX<=0;
    MemRW_out_IDEX<=0;
    Jump_out_IDEX<=0;
    MemtoReg_out_IDEX<=0;
    RegWrite_out_IDEX<=0;
    end
    else begin
    PC_out_IDEX<=PC_in_IDEX;
    Rd_addr_out_IDEX<=Rd_addr_IDEX;
    Rs1_out_IDEX<=Rs1_in_IDEX;
    Rs2_out_IDEX<=Rs2_in_IDEX;
    Imm_out_IDEX<=Imm_in_IDEX;
    ALUSrc_B_out_IDEX<=ALUSrc_B_in_IDEX;
    ALU_control_out_IDEX<=ALU_control_in_IDEX;
    Branch_out_IDEX<=Branch_in_IDEX;
    BranchN_out_IDEX<=BranchN_in_IDEX;
    MemRW_out_IDEX<=MemRW_in_IDEX;
    Jump_out_IDEX<=Jump_in_IDEX;
    MemtoReg_out_IDEX<=MemtoReg_in_IDEX;
    RegWrite_out_IDEX<=RegWrite_in_IDEX;
    valid_out_IDEX<=valid_in_IDEX;
    end
    end
endmodule
