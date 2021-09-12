`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 18:56:55
// Design Name: 
// Module Name: Pipeline_ID
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


module Pipeline_ID(
input wire clk_ID,
input wire rst_ID,
input wire[4:0] Rd_addr_ID,
input wire[31:0] Wt_data_ID,
input wire RegWrite_in_ID,
input wire[31:0] Inst_in_ID,
output [31:0] Rs1_out_ID,
output [31:0] Rs2_out_ID,
output [31:0] Imm_out_ID,
output reg[4:0] Rd_addr_out_ID,
//output of control unit
output  ALUSrc_B_ID,
output [1:0] MemtoReg_ID,
output  Jump_ID,
output Branch_ID,
output  BranchN_ID,
output RegWrite_out_ID,
output  MemRW_ID,
output [2:0] ALU_Control_ID,
output reg[4:0] Rs1_addr_ID,
output reg[4:0] Rs2_addr_ID,
output  Rs1_used,
output  Rs2_used
);
wire[4:0] Inst_24_20;
wire[4:0] Inst_19_15;
wire[4:0] Inst_6_2;
wire[2:0] Inst14_12;
wire Inst30;
wire[4:0] Inst11_7;
wire[1:0] ImmSel;

assign Inst_24_20=Inst_in_ID[24:20];
assign Inst_19_15=Inst_in_ID[19:15];
assign Inst_6_2=Inst_in_ID[6:2];
assign Inst_14_12=Inst_in_ID[14:12];
assign Inst30=Inst_in_ID[30];
assign Inst11_7=Inst_in_ID[11:7];

always @ (posedge clk_ID) begin
    Rd_addr_out_ID<=Inst11_7;
    Rs1_addr_ID<=Inst_19_15;
    Rs2_addr_ID<=Inst_24_20;
    end
 
Regs Regs_0(.clk(clk_ID),
.rst(rst_ID),
.Rs1_addr(Inst_19_15),
.Rs2_addr(Inst_24_20),
.Wt_addr(Rd_addr_ID),
.Wt_data(Wt_data_ID),
.RegWrite(RegWrite_in_ID),
.Rs1_data(Rs1_out_ID),
.Rs2_data(Rs2_out_ID));

ImmGen ImmGen_0(.ImmSel(ImmSel),
.inst_field(Inst_in_ID),
.Imm_out(Imm_out_ID));

SCPU_ctrl SCPU_ctrl_0(.OPcode(Inst_6_2),
.Fun3(Inst_14_12),
.Fun7(Inst30),
.ImmSel(ImmSel),
.ALUSrc_B(ALUSrc_B_ID),
.MemtoReg(MemtoReg_ID),
.Jump(Jump_ID),
.Branch(Branch_ID),
.BranchN(BranchN_ID),
.RegWrite(RegWrite_out_ID),
.MemRW(MemRW_ID),
.ALU_Control(ALU_Control_ID),
.Rs1_used(Rs1_used),
.Rs2_used(Rs2_used)
);

endmodule
