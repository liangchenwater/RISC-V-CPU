`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/17 19:56:59
// Design Name: 
// Module Name: tb_ctrl
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


module tb_ctrl();
    reg [4:0] OPcode;
    reg [2:0] Fun3;
    reg Fun7;
    reg MIO_ready;
   wire [1:0] ImmSel;
   wire ALUSrc_B;
    wire[1:0] MemtoReg;
    wire Jump;
    wire Branch;
    wire RegWrite;
     wire MemRW;
 wire [2:0] ALU_Control;
    wire CPU_MIO;
    initial begin
// Initialize Inputs
OPcode = 0;
Fun3= 0;
Fun7=0;
MIO_ready = 0;
#40;
// Wait 40 ns for global reset to finish�������ǲ���ģ����롣
// Add stimulus here
//�������źź͹ؼ��ź�����Ƿ�������ֵ��
OPcode = 5'b01100; //ALUָ���� ALUop=2'b00; RegWrite=1
Fun3 = 3'b000; Fun7 = 1'b0;//add,���ALU_Control=3'b010
#20;
Fun3 = 3'b000; Fun7 = 1'b1;//sub,���ALU_Control=3'b110
#20;
Fun3 = 3'b111; Fun7 = 1'b0;//and,���ALU_Control=3'b000
#20;
Fun3 = 3'b110; Fun7 = 1'b0;//or,���ALU_Control=3'b001
#20;
Fun3 = 3'b010; Fun7 = 1'b0 ;//slt,���ALU_Control=3'b111
#20;
Fun3 = 3'b101; Fun7 = 1'b0;//srl,���ALU_Control=3'b101
#20;
Fun3 = 3'b100; Fun7 = 1'b0;//xor,���ALU_Control=3'b011
#20;
Fun3 = 3'b111; Fun7 = 1'b1; //���
#1;
OPcode = 5'b00000;//loadָ���� ALUop=2'b01,
#20; // ALUSrc_B=1, MemtoReg=1, RegWrite=1
OPcode = 5'b01000;
#20; //storeָ����ALUop=2'b10, MemRW=1, ALUSrc_B=1
OPcode = 5'b11000;//beqָ���� ALUop=2'b11, Branch=1
#20;
OPcode = 5'b11011;//jumpָ���� Jump=1
#20;
OPcode = 5'b00100; //Iָ���� ALUop=2'b01; RegWrite=1
Fun3 = 3'b000; //addi,���ALU_Control=3'b010
end
SCPU_ctrl cpu_u(OPcode,Fun3,Fun7,MIOReady,ImmSel,ALUSrc_B,MemtoReg,
Jump,Branch,RegWrite,MemRW,ALU_Control,CPU_MIO);
endmodule
