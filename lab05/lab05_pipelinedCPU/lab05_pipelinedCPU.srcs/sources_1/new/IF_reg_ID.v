`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 20:45:46
// Design Name: 
// Module Name: IF_reg_ID
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


module IF_reg_ID(
  input clk_IFID,
  input rst_IFID,
  input en_IFID,
  input [31:0]PC_in_IFID,
  input [31:0]inst_in_IFID,
  input NOP_IFID,
  output reg [31:0]PC_out_IFID,
  output reg [31:0]inst_out_IFID,
  output reg valid_IFID
    );
    always @ (posedge clk_IFID) begin
    if(NOP_IFID==0) begin
    PC_out_IFID <= PC_in_IFID;
    inst_out_IFID <= inst_in_IFID;
    valid_IFID<=1;
    end 
    else begin
    PC_out_IFID<=32'h00000000;
    inst_out_IFID<=32'h00000013;
    valid_IFID<=0;
    end
    end
endmodule
