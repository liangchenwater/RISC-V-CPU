`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 21:10:25
// Design Name: 
// Module Name: Mem_reg_WB
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


module Mem_reg_WB(
 input clk_MemWB,
  input rst_MemWB,
  input en_MemWB,
  input[31:0] PC_in_MemWB,
  input [31:0]PC4_in_MemWB,
  input [4:0]Rd_addr_MemWB,
  input [31:0]ALU_in_MemWB,
  input [31:0]DMem_data_MemWB,
  input [1:0]MemtoReg_in_MemWB,
  input RegWrite_in_MemWB,
  input valid_in_MemWB,
  output reg [31:0]PC4_out_MemWB,
  output  reg [4:0]Rd_addr_out_MemWB,
  output reg [31:0]ALU_out_MemWB,
  output reg [31:0]DMem_data_out_MemWB,
  output  reg [1:0]MemtoReg_out_MemWB,
  output reg RegWrite_out_MemWB,
  output reg valid_out_MemWB
    );
    always @ (posedge clk_MemWB) begin
    PC4_out_MemWB<=PC4_in_MemWB;
    Rd_addr_out_MemWB<=Rd_addr_MemWB;
    ALU_out_MemWB<=ALU_in_MemWB;
    DMem_data_out_MemWB<=DMem_data_MemWB;
    MemtoReg_out_MemWB<=MemtoReg_in_MemWB;
    RegWrite_out_MemWB<=RegWrite_in_MemWB;
    valid_out_MemWB<=valid_in_MemWB;
    end
endmodule
