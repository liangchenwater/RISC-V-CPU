`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 21:05:41
// Design Name: 
// Module Name: Pipeline_CPU
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


module Pipeline_CPU(
input wire[31:0] Data_in,
input wire rst,
input wire clk,
input wire[31:0] inst_IF,
output reg[31:0] PC_out_EX,
output reg[31:0] PC_out_ID,
output reg[31:0] inst_ID,
output reg[31:0] PC_out_IF,
output reg[31:0] Addr_out,
output reg[31:0] Data_out,
output reg[31:0] Data_out_WB,
output reg MemRW_Mem,
output reg MemRW_EX
);
wire[31:0] PC_imm_EXMem;
wire[31:0] PC_out_ID_0;
wire[31:0] PC_out_IF_0;
wire[31:0] Data_out_WB_0;
wire MemRW_Mem_0;
//stall
wire en_IF;
wire en_IFID;
wire NOP_IFID;
wire NOP_IDEX;
wire[4:0] Rs1_addr_ID;
wire[4:0] Rs2_addr_ID;
wire Rs1_used;
wire Rs2_used;
//ID
wire RegWrite_out_MemWB;
wire[4:0] Rd_addr_out_MemWB;
wire[4:0] Rd_addr_IDEX;
wire[31:0] Rs1_in_IDEX;
wire[31:0] Rs2_in_IDEX;
wire[31:0] Imm_in_IDEX;
wire ALUSrc_B_in_IDEX;
wire[2:0] ALU_control_in_IDEX;
wire Branch_in_IDEX;
wire BranchN_in_IDEX;
wire MemRW_in_IDEX;
wire Jump_in_IDEX;
wire[1:0] MemtoReg_in_IDEX;
wire RegWrite_in_IDEX;
wire[31:0] PC_in_EX;
wire[31:0] Rs1_in_EX;
wire[31:0] Rs2_in_EX;
wire[31:0] Imm_in_EX;
wire ALUSrc_B_in_EX;
wire[2:0] ALU_control_in_EX;
wire[4:0] Rd_addr_EXMem;
wire Branch_in_EXMem;
wire BranchN_in_EXMem;
wire Jump_in_EXMem;
wire[1:0] MemtoReg_in_EXMem;
wire RegWrite_in_EXMem;
wire MemRW_in_EXMem;
wire[31:0] PC_in_MemWB;
wire[31:0] PC4_in_MemWB;
wire[31:0] Rs2_out_EXMem;
wire[4:0] Rd_addr_MemWB;
wire zero_in_Mem;
wire[31:0] ALU_in_MemWB;
wire Branch_in_Mem;
wire BranchN_in_Mem;
wire Jump_in_Mem;
wire[1:0] MemtoReg_in_MemWB;
wire RegWrite_in_MemWB;

stall stall(
.rst_stall(rst),
.Rs1_addr_ID(Rs1_addr_ID),
.Rs2_addr_ID(Rs2_addr_ID),
.RegWrite_out_IDEX(RegWrite_in_EXMem),
.Rd_addr_out_IDEX(Rd_addr_EXMem),
.RegWrite_out_EXMem(RegWrite_in_MemWB),
.Rd_addr_out_EXMem(Rd_addr_MemWB),
.Rs1_used(Rs1_used),
.Rs2_used(Rs2_used),
.Branch_ID(Branch_in_IDEX),
.BranchN_ID(BranchN_in_IDEX),
.Jump_ID(Jump_in_IDEX),
.Branch_out_IDEX(Branch_in_EXMem),
.BranchN_out_IDEX(BranchN_in_EXMem),
.Jump_out_IDEX(Jump_in_EXMem),
.Branch_out_EXMem(Branch_in_Mem),
.BranchN_out_EXMem(BranchN_in_Mem),
.Jump_out_EXMem(Jump_in_Mem),
.en_IF(en_IF),
.en_IFID(en_IFID),
.NOP_IFID(NOP_IFID),
.NOP_IDEX(NOP_IDEX)
);

//IF
wire[31:0] PC_imm_out_EXMem;
wire[31:0] inst_in_ID;
wire PCSrc;
Pipeline_IF Instruction_Fetch(
.clk_IF(clk),
.rst_IF(rst),
.en_IF(en_IF),
.PC_in_IF(PC_imm_out_EXMem),
.PCSrc(PCSrc),
.PC_out_IF(PC_out_IF_0)
);

IF_reg_ID IF_reg_ID(
.clk_IFID(clk),
.rst_IFID(rst),
.en_IFID(en_IFID),
.NOP_IFID(NOP_IFID),
.PC_in_IFID(PC_out_IF),
.inst_in_IFID(inst_IF),
.PC_out_IFID(PC_out_ID_0),
.inst_out_IFID(inst_in_ID)
);


Pipeline_ID Instruction_Decoder(
.clk_ID(clk),
.rst_ID(rst),
.RegWrite_in_ID(RegWrite_ID_Mem),
.Rd_addr_ID(Rd_addr_out_MemWB),
.Wt_data_ID(Data_out_WB),
.Inst_in_ID(inst_in_ID),
.Rd_addr_out_ID(Rd_addr_IDEX),
.Rs1_out_ID(Rs1_in_IDEX),
.Rs2_out_ID(Rs2_in_IDEX),
.Imm_out_ID(Imm_in_IDEX),
.ALUSrc_B_ID(ALUSrc_B_in_IDEX),
.ALU_Control_ID(ALU_control_in_IDEX),
.Branch_ID(Branch_in_IDEX),
.BranchN_ID(BranchN_in_IDEX),
.MemRW_ID(MemRW_in_IDEX),
.Jump_ID(Jump_in_IDEX),
.MemtoReg_ID(MemtoReg_in_IDEX),
.RegWrite_out_ID(RegWrite_in_IDEX),
.Rs1_addr_ID(Rs1_addr_ID),
.Rs2_addr_ID(Rs2_addr_ID),
.Rs1_used(Rs1_used),
.Rs2_used(Rs2_used)
);

ID_reg_Ex ID_reg_Ex(
.clk_IDEX(clk),
.rst_IDEX(rst),
.en_IDEX(1),
.NOP_IDEX(NOP_IDEX),
.PC_in_IDEX(PC_out_ID),
.Rd_addr_IDEX(Rd_addr_IDEX),
.Rs1_in_IDEX(Rs1_in_IDEX),
.Rs2_in_IDEX(Rs2_in_IDEX),
.Imm_in_IDEX(Imm_in_IDEX),
.ALUSrc_B_in_IDEX(ALUSrc_B_in_IDEX),
.ALU_control_in_IDEX(ALU_control_in_IDEX),
.Branch_in_IDEX(Branch_in_IDEX),
.BranchN_in_IDEX(BranchN_in_IDEX),
.MemRW_in_IDEX(MemRW_in_IDEX),
.Jump_in_IDEX(Jump_in_IDEX),
.MemtoReg_in_IDEX(MemtoReg_in_IDEX),
.RegWrite_in_IDEX(RegWrite_in_IDEX),
.PC_out_IDEX(PC_in_EX),
.Rd_addr_out_IDEX(Rd_addr_EXMem),
.Rs1_out_IDEX(Rs1_in_EX),
.Rs2_out_IDEX(Rs2_in_EX),
.Imm_out_IDEX(Imm_in_EX),
.ALUSrc_B_out_IDEX(ALUSrc_B_in_EX),
.ALU_control_out_IDEX(ALU_control_in_EX),
.Branch_out_IDEX(Branch_in_EXMem),
.BranchN_out_IDEX(BranchN_in_EXMem),
.MemRW_out_IDEX(MemRW_in_EXMem),
.Jump_out_IDEX(Jump_in_EXMem),
.MemtoReg_out_IDEX(MemtoReg_in_EXMem),
.RegWrite_out_IDEX(RegWrite_in_EXMem)
);

//Ex
wire[31:0] PC_imm_EXMem;
wire[31:0] PC4_in_EXMem;
wire zero_in_EXMem;
wire[31:0] ALU_in_EXMem;
wire[31:0] Rs2_in_EXMem;
Pipeline_Ex Execute(
.PC_in_Ex(PC_in_EX),
.Rs1_in_Ex(Rs1_in_EX),
.Rs2_in_Ex(Rs2_in_EX),
.Imm_in_Ex(Imm_in_EX),
.ALUSrc_B_in_Ex(ALUSrc_B_in_EX),
.ALU_control_in_Ex(ALU_control_in_EX),
.PC_out_Ex(PC_imm_EXMem),
.PC4_out_Ex(PC4_in_EXMem),
.zero_out_Ex(zero_in_EXMem),
.ALU_out_Ex(ALU_in_EXMem),
.Rs2_out_Ex(Rs2_in_EXMem)
);

Ex_reg_Mem Ex_reg_Mem(
.clk_EXMem(clk),
.rst_EXMem(rst),
.en_EXMem(1),
.PC_in_EXMem(PC_in_EX),
.PC_imm_EXMem(PC_imm_EXMem),
.PC4_in_EXMem(PC4_in_EXMem),
.Rd_addr_EXMem(Rd_addr_EXMem),
.zero_in_EXMem(zero_in_EXMem),
.ALU_in_EXMem(ALU_in_EXMem),
.Rs2_in_EXMem(Rs2_in_EXMem),
.Branch_in_EXMem(Branch_in_EXMem),
.BranchN_in_EXMem(BranchN_in_EXMem),
.MemRW_in_EXMem(MemRW_in_EXMem),
.Jump_in_EXMem(Jump_in_EXMem),
.MemtoReg_in_EXMem(MemtoReg_in_EXMem),
.RegWrite_in_EXMem(RegWrite_in_EXMem),
.PC_out_EXMem(PC_in_MemWB),
.PC4_out_EXMem(PC4_in_MemWB),
.Rd_addr_out_EXMem(Rd_addr_MemWB),
.zero_out_EXMem(zero_in_Mem),
.ALU_out_EXMem(ALU_in_MemWB),
.Rs2_out_EXMem(Rs2_out_EXMem),
.Branch_out_EXMem(Branch_in_Mem),
.BranchN_out_EXMem(BranchN_in_Mem),
.MemRW_out_EXMem(MemRW_Mem_0),
.Jump_out_EXMem(Jump_in_Mem),
.MemtoReg_out_EXMem(MemtoReg_in_MemWB),
.RegWrite_out_EXMem(RegWrite_in_MemWB),
.PC_imm_out_EXMem(PC_imm_out_EXMem)
);

//Mem
Pipeline_Mem Memory_Access(
.zero_in_Mem(zero_in_Mem),
.Branch_in_Mem(Branch_in_Mem),
.BranchN_in_Mem(BranchN_in_Mem),
.Jump_in_Mem(Jump_in_Mem),
.PCSrc(PCSrc)
);

wire[31:0] PC4_in_WB;
wire[31:0] ALU_in_WB;
wire[1:0] MemtoReg_in_WB;
wire[31:0] DMem_data_WB;
Mem_reg_WB Mem_reg_WB(.clk_MemWB(clk),
.rst_MemWB(rst),
.en_MemWB(1),
.PC_in_MemWB(PC_in_MemWB),
.PC4_in_MemWB(PC4_in_MemWB),
.Rd_addr_MemWB(Rd_addr_MemWB),
.ALU_in_MemWB(ALU_in_MemWB),
.DMem_data_MemWB(Data_in),
.MemtoReg_in_MemWB(MemtoReg_in_MemWB),
.RegWrite_in_MemWB(RegWrite_in_MemWB),
.PC4_out_MemWB(PC4_in_WB),
.Rd_addr_out_MemWB(Rd_addr_out_MemWB),
.ALU_out_MemWB(ALU_in_WB),
.DMem_data_out_MemWB(DMem_data_WB),
.MemtoReg_out_MemWB(MemtoReg_in_WB),
.RegWrite_out_MemWB(RegWrite_out_MemWB)
);

//WB
Pipeline_WB Write_Back(.PC4_in_WB(PC4_in_WB),
.ALU_in_WB(ALU_in_WB),
.DMem_data_WB(DMem_data_WB),
.MemtoReg_in_WB(MemtoReg_inWB),
.Data_out_WB(Data_out_WB_0)
);

//output
always @ * begin
PC_out_IF<=PC_out_IF_0;
PC_out_EX<= PC_imm_EXMem;
inst_ID<=inst_in_ID;
PC_out_ID<=PC_out_ID_0;
Addr_out<=ALU_in_MemWB;
Data_out<=Rs2_out_EXMem;
Data_out_WB<=Data_out_WB_0;
MemRW_EX<=MemRW_in_EXMem;
MemRW_Mem<=MemRW_Mem_0;
end

endmodule
