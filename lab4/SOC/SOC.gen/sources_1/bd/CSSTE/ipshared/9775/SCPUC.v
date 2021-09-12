`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/19 14:56:24
// Design Name: 
// Module Name: SCPUC
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


module SCPUC(
input wire clk,
input wire rst,
input wire INT0,
input wire [31:0] Inst_in,
input wire [31:0] Data_in,
input wire MIO_ready,
output wire MemRW,
output wire CPU_MIO,
output wire [31:0] Addr_out,
output wire [31:0] Data_out,
output wire [31:0] PC_out
    );
    wire[4:0] OPcode;
    wire[2:0] Fun3;
    wire[11:0] Fun12;
    wire Fun7;
    assign OPcode=Inst_in[6:2],
    Fun3=Inst_in[14:12],
    Fun7=Inst_in[30],
    Fun12=Inst_in[31:20];
    
    wire[2:0] ImmSel;
    wire ALUSrc_B;
    wire[1:0] MemtoReg;
   wire[2:0] pc_src;
    wire RegWrite;
    wire[3:0] ALU_Control;
    wire[1:0] interr;
    
    controller CONTROL(
    .OPcode(OPcode),
    .Fun3(Fun3),
    .Fun7(Fun7),
    .Fun12(Fun12),
    .MIO_ready(MIO_ready),
    .ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .pc_src_control(pc_src),
    .RegWrite(RegWrite),
    .MemRW(MemRW),
    .ALU_Control(ALU_Control),
    .CPU_MIO(CPU_MIO),
    .interr(interr)
    );
    
    datapath DATAPATH(
    .INT0(INT0),
   .ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .pc_src_control(pc_src),
    .interr(interr),
    .RegWrite(RegWrite),
    .ALU_operation(ALU_Control),
    .Inst_in(Inst_in),
    .Data_in(Data_in),
    .clk(clk),
    .rst(rst),
    .ALU_out(Addr_out),
    .Data_out(Data_out),
    .PC_out(PC_out)
    );
    
endmodule
