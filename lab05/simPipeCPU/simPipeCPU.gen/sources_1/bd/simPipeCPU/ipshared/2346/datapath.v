`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 18:18:08
// Design Name: 
// Module Name: datapath
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

//en==0 means stop£¬but not reset
//The real IF is related with IMem, and the real Mem is related with DMem, which are implicit in datapath
module datapath(
	input clk,
	input rst,
	input[31:0] Data_in,
	input if_en,
	input id_en,
	input ex_en,
	input mem_en,
	input if_rst,
	input id_rst,
	input ex_rst,
	input mem_rst,    
	input[1:0] ImmSel,
    input ALUSrc_B,
    input[1:0] MemtoReg,
    input[2:0] ALU_Control,
	input MemRW,
	input RegWrite,
	input [1:0] pc_src_control,
	input[31:0] instr,
	input Rs1_used,
	input Rs2_used,
	output reg [31:0] inst_if,
	output reg [31:0] inst_id,
	output reg [31:0] PC_ex,
	output reg [31:0] PC_id,
    output reg[31:0] PC_if,
	output reg[31:0] Data_out,
	output reg[31:0] Wt_data,
	output reg[31:0] Addr_out,
	output reg MemRW_mem,
	output reg MemRW_ex,
	output reg[31:0] PC_out,
	output reg[1:0] pc_src_id,
	output reg[4:0] Rd_addr_ex,
	output reg[4:0] Rd_addr_mem,
	output reg Rs1_used_id,
	output reg Rs2_used_id
    );
    
    
    //IF signals
    wire[31:0] PC_next;
    wire[31:0] PC_jump;
    wire[31:0] PC_branch;
    wire[31:0] Imm_id;
    wire rs1_rs2_eq;
    reg[31:0] Imm_ex;
    reg[1:0] pc_src_ex;
    //IF
    assign PC_next=PC_out+4;
    assign PC_jump=PC_id+Imm_id;
    assign PC_branch=PC_ex+Imm_ex;
    
      //IF/ID
    always @ (posedge clk or posedge rst) begin
         //initialization
        if(rst) begin PC_out<=0; end
        else if(if_rst) begin 
    	//PC should be fixed when if stage is reset
    	inst_if<=32'h00000013;
    	end
     //jal(done immediately in the same clock after jal is decoded)
    	else if(pc_src_id==2'b11) begin
    	PC_out<=PC_jump;
    	end
     //bne and beq(done immediately in the same clock after branch is executed)
      else if((pc_src_ex==2'b01&&rs1_rs2_eq)||(pc_src_ex==2'b10&&!rs1_rs2_eq)) begin
         PC_out<=PC_branch;
        end
        else if(if_en) begin
    	inst_if<=instr;
    	PC_if<=PC_out;
    	PC_out<=PC_next;
    	end
    	end
     
     
    //controller
    
    
    //ID signals
    wire[4:0] Rs1_addr_id;
    wire[4:0] Rs2_addr_id;
    wire[4:0] Rd_addr_id;
    wire[31:0] Rs1_data_id;
    wire[31:0] Rs2_data_id;
    reg[4:0] Rd_addr_wb;
    reg ALUSrc_B_id;
    reg[1:0] MemtoReg_id;
    reg RegWrite_id;
    reg MemRW_id;
    reg[2:0] ALU_Control_id;
    reg RegWrite_wb;
    reg RegWrite_mem;
    reg[1:0] ImmSel_id;
    //ID
    assign
    Rs1_addr_id=inst_id[19:15],
    Rs2_addr_id=inst_id[24:20],
    Rd_addr_id=inst_id[11:7];
    
    ImmGen ImmGen(.ImmSel(ImmSel_id), .inst_field(inst_id), .Imm_out(Imm_id));
 
    //essentially combined with WB
    Regs Regs(
    .clk(clk),
    .rst(rst),
    .Rs1_addr(Rs1_addr_id),
    .Rs2_addr(Rs2_addr_id),
    .Wt_addr(Rd_addr_mem),
    .Wt_data(Wt_data),
    .RegWrite(RegWrite_mem),
    .Rs1_data(Rs1_data_id),
    .Rs2_data(Rs2_data_id)
    );
    //ID/EX
    always @ (posedge clk) begin
    	if(id_rst) begin
    	PC_id<=0;
    	inst_id<=32'h00000013;
    	pc_src_id<=0;
    	ALUSrc_B_id<=0;
    	MemtoReg_id<=0;
    	RegWrite_id<=0;
    	MemRW_id<=0;
    	ALU_Control_id<=0;
    	Rs1_used_id<=0;
    	Rs2_used_id<=0;
    	ImmSel_id<=0;
    	end
    	else if(id_en) begin
    	PC_id<=PC_if;
    	inst_id<=inst_if;
    	pc_src_id<=pc_src_control;
    	ALUSrc_B_id<=ALUSrc_B;
    	MemtoReg_id<=MemtoReg;
    	RegWrite_id<=RegWrite;
    	MemRW_id<=MemRW;
    	ALU_Control_id<=ALU_Control;
    	Rs1_used_id<=Rs1_used;
    	Rs2_used_id<=Rs2_used;
    	ImmSel_id<=ImmSel;
    	end
    end
    
    
    //EX signals
    reg[31:0] inst_ex;
    wire[31:0] ALU_out_ex;
    reg[31:0] Rs1_data_ex;
    reg[31:0] Rs2_data_ex;
    reg ALUSrc_B_ex;
    reg[1:0] MemtoReg_ex;
    reg RegWrite_ex;
    reg [2:0] ALU_Control_ex;
    reg[31:0] A;
    reg[31:0] B;   
    //EX
    //alu
    always @ * begin
    A=Rs1_data_ex;
    B=Rs2_data_ex;
    if(ALUSrc_B_ex) begin B=Imm_ex;end   
    end
  alu alu(.A(A), .B(B), .ALU_operation(ALU_Control_ex),.res(ALU_out_ex),.zero(rs1_rs2_eq));
    //EX/MEM
    always @ (posedge clk) begin
    if(ex_rst) begin 
    PC_ex<=0;
    inst_ex<=32'h00000013;
    Rd_addr_ex<=0;
    Rs1_data_ex<=0;
    Rs2_data_ex<=0;
    Imm_ex<=0;
    ALUSrc_B_ex<=0;
    MemtoReg_ex<=0;
    RegWrite_ex<=0;
    ALU_Control_ex<=0;
    MemRW_ex<=0;
    pc_src_ex<=0;
    end
    else if(ex_en) begin
    PC_ex<=PC_id;
    inst_ex<=inst_id;
    Rd_addr_ex<=Rd_addr_id;
    Rs1_data_ex<=Rs1_data_id;
    Rs2_data_ex<=Rs2_data_id;
    Imm_ex<=Imm_id;
    ALUSrc_B_ex<=ALUSrc_B_id;
    MemtoReg_ex<=MemtoReg_id;
    RegWrite_ex<=RegWrite_id;
    ALU_Control_ex<=ALU_Control_id;
    MemRW_ex<=MemRW_id;
    pc_src_ex<=pc_src_id;
    end
    end
  
  
  //MEM signals
  reg[31:0] PC_mem;
  reg[31:0] inst_mem;
  reg[31:0] Imm_mem;
  reg[1:0] MemtoReg_mem;
  reg[31:0] ALU_out_mem;
  //MEM
  //for store and load(done immediately in the same clock after the corresponding instruction passed the execute stage)
    always @ * begin
    Data_out=Rs2_data_ex;
    Addr_out=ALU_out_ex;
    end  
  //MEM/WB
  always @(posedge clk) begin
  if(mem_rst) begin
  PC_mem<=0;
  inst_mem<=0;
  Rd_addr_mem<=0;
  MemtoReg_mem<=0;
  RegWrite_mem<=0;
  ALU_out_mem<=0;
  MemRW_mem<=0;
  Imm_mem<=0;
  end
  else if(mem_en)begin
  PC_mem<=PC_ex;
  inst_mem<=inst_ex;
  Rd_addr_mem<=Rd_addr_ex;
  MemtoReg_mem<=MemtoReg_ex;
  RegWrite_mem<=RegWrite_ex;
  ALU_out_mem<=ALU_out_ex;
  MemRW_mem<=MemRW_ex;
  Imm_mem<=Imm_ex;
  end
 end

 
//WB(done immediately in the same clock after the corresponding instruction passed the mem stage)
 always@ * begin
  	case(MemtoReg_mem) 
   	2'b00: begin Wt_data= ALU_out_mem;end
   	2'b01:begin  Wt_data=Data_in; end
   	2'b10: begin Wt_data=PC_mem+4;end
   	endcase
 end
   	
endmodule
