`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/22 01:21:53
// Design Name: 
// Module Name: pCPU
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


module pCPU(
input clk,
input rst,
input [31:0] Data_in,
input[31:0] instr,
output[31:0] PC_out,
output [31:0] PC_if,
output[31:0] PC_id,
output[31:0] PC_ex,
output [31:0] inst_if,
output[31:0] inst_id,
output[31:0] Addr_out,
output[31:0] Data_out,
output[31:0] Wt_data,
output MemRW,
output MemRW_ex
 );
    wire if_en;
	wire id_en;
	wire ex_en;
	wire mem_en;
	wire if_rst;
	wire id_rst;
	wire ex_rst;
	wire mem_rst;   
	wire[1:0] ImmSel;
    wire ALUSrc_B;
    wire[1:0] MemtoReg;
    wire[2:0] ALU_Control;
	wire RegWrite;
	wire [1:0] pc_src_control;
	wire[1:0] pc_src_id;
	wire[4:0] Rd_addr_ex;
	wire[4:0] Rd_addr_mem;
	wire MemRW_in_datapath;
    wire Rs1_used;
    wire Rs2_used;
    wire Rs1_used_id;
    wire Rs2_used_id;
    
 datapath datapath(
    .clk(clk),
	.rst(rst),
	.Data_in(Data_in),
	.if_en(if_en),
	.id_en(id_en),
	.ex_en(ex_en),
	.mem_en(mem_en),
	.if_rst(if_rst),
	.id_rst(id_rst),
	.ex_rst(ex_rst),
	 .mem_rst(mem_rst),  
	.ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .ALU_Control(ALU_Control),
	.MemRW(MemRW_in_datapath),
	.RegWrite(RegWrite),
	.pc_src_control(pc_src_control),
	.instr(instr),
	 .inst_id(inst_id),
	 .PC_if(PC_if),
	 .PC_ex(PC_ex),
	 .PC_id(PC_id),
	 .Data_out(Data_out),
	  .Wt_data(Wt_data),
	 .Addr_out(Addr_out),
	 .MemRW_mem(MemRW),
	.MemRW_ex(MemRW_ex),
	 .PC_out(PC_out),
	.pc_src_id(pc_src_id),
	.Rd_addr_ex(Rd_addr_ex),
	.Rd_addr_mem(Rd_addr_mem),
	.inst_if(inst_if),
	.Rs1_used(Rs1_used),
	.Rs2_used(Rs2_used),
	.Rs1_used_id(Rs1_used_id),
	.Rs2_used_id(Rs2_used_id)
 );
 
 wire[4:0] OPcode;
 wire[2:0] Fun3;
 wire Fun7;
 wire[4:0] Rs1_addr_id;
 wire[4:0] Rs2_addr_id;
 assign
 OPcode=inst_if[6:2],
 Fun3=inst_if[14:12],
 Fun7=inst_if[30],
 Rs1_addr_id=inst_id[19:15],
 Rs2_addr_id=inst_id[24:20];
 
 controller controller(
    .rst(rst),
    .OPcode(OPcode),
    .Fun3(Fun3),
    .Fun7(Fun7),
    .Rs1_addr_id(Rs1_addr_id),
    .Rs2_addr_id(Rs2_addr_id),
    .Rd_addr_ex(Rd_addr_ex),
    .Rd_addr_mem(Rd_addr_mem),
    .pc_src_id(pc_src_id),
    .ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .pc_src_control(pc_src_control),
    .RegWrite(RegWrite),
    .MemRW(MemRW_in_datapath),
    .ALU_Control(ALU_Control),
    .if_rst(if_rst), 
	.if_en(if_en), 
	.id_rst(id_rst),
	.id_en(id_en),
	.ex_rst(ex_rst),
	.ex_en(ex_en),
	.mem_rst(mem_rst),
	.mem_en(mem_en),
	.Rs1_used(Rs1_used),
	.Rs2_used(Rs2_used),
	.Rs1_used_id(Rs1_used_id),
	.Rs2_used_id(Rs2_used_id)
 );
endmodule
