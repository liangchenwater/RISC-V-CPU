`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/21 10:32:35
// Design Name: 
// Module Name: stall
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


module stall(
input rst_stall, //��λ
input RegWrite_out_IDEX, //ִ�н׶μĴ���д����
input RegWrite_out_EXMem, //�ô�׶μĴ���д����
input [4:0]Rd_addr_out_IDEX, //ִ�н׶μĴ���д��ַ
input [4:0]Rd_addr_out_EXMem, //�ô�׶μĴ���д��ַ
input [4:0]Rs1_addr_ID, //����׶μĴ�������ַ1
input [4:0]Rs2_addr_ID, //����׶μĴ�������ַ2
input Rs1_used, //Rs1��ʹ��
input Rs2_used, //Rs2��ʹ��
input Branch_ID, //����׶�beq
input BranchN_ID, //����׶�bne
input Jump_ID, //����׶�jal
input Branch_out_IDEX, //ִ�н׶�beq
input BranchN_out_IDEX, //ִ�н׶�bne
input Jump_out_IDEX, //ִ�н׶�jal
input Branch_out_EXMem, //�ô�׶�beq
input BranchN_out_EXMem, //�ô�׶�bne
input Jump_out_EXMem, //�ô�׶�jalstallģ��ӿ��źű�׼��stall.v
output reg en_IF, //��ˮ�߼Ĵ�����ʹ�ܼ�NOP�ź�
output reg en_IFID,
output reg NOP_IFID,
output reg NOP_IDEX);

reg Data_stall;
reg Control_stall;
always @ * begin
//data hazards, stall two clocks
if( RegWrite_out_IDEX && Rs1_used && Rs1_addr_ID && Rs1_addr_ID==Rd_addr_out_IDEX) Data_stall=1;
else if( RegWrite_out_IDEX && Rs2_used && Rs2_addr_ID && Rs2_addr_ID==Rd_addr_out_IDEX) Data_stall=1;
else if( RegWrite_out_EXMem && Rs1_used && Rs1_addr_ID && Rs1_addr_ID==Rd_addr_out_EXMem) Data_stall=1;
else if( RegWrite_out_EXMem && Rs2_used && Rs2_addr_ID && Rs2_addr_ID==Rd_addr_out_EXMem) Data_stall=1;
else Data_stall<=0;
if(Data_stall) begin
en_IF=0;
en_IFID=0;
NOP_IDEX=1;
end
else begin
en_IF=1;
en_IFID=1;
NOP_IDEX=0;
end
//control hazards, stall three clocks
if(Branch_ID||BranchN_ID||Jump_ID) Control_stall=1;
else if(Branch_out_IDEX||BranchN_out_IDEX||Jump_out_IDEX) Control_stall=1;
else if(Branch_out_EXMem||BranchN_out_EXMem||Jump_out_EXMem) Control_stall=1;
if(Control_stall) begin NOP_IFID=1; end
else begin NOP_IFID=0; end
end
endmodule
