`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/19 13:31:27
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


module datapath(
input  clk,
input  rst,
input INT0,
//control signals
input [1:0] pc_src_control,
input [1:0] interr,
input [1:0] MemtoReg,
input ALUSrc_B,
input  RegWrite,
input  [2:0] ImmSel,
input  [3:0] ALU_operation,
//input data and inst
input  [31:0] Data_in,
input  [31:0] Inst_in,
//output
output reg [31:0] PC_out,
output reg [31:0] Data_out,
output reg [31:0] ALU_out
);
    //generate immdiates
    wire [31:0] Imm_out;
    ImmGen IMM(.ImmSel(ImmSel),
    .inst_field(Inst_in),
    .Imm_out(Imm_out));
    //calculate PC
    wire [31:0] PC_next;
    wire [31:0] PC_jump;
    wire [31:0] PC_ecall;
    wire [31:0] PC_ill;
    wire [31:0] PC_hardware;
    wire rs_rt_equal;
    reg [31:0] mepc;
    reg interr_en;
    assign PC_next = PC_out+4;
    assign PC_jump = PC_out+Imm_out;
    assign PC_ecall=32'h00000008;
    assign PC_ill=32'h00000004;
    assign PC_hardware=32'h0000000C;
   
    always @ (posedge clk or posedge rst or posedge INT0) begin
          if(rst) begin PC_out<=0; 
            mepc<=0; 
            interr_en<=1;
            end
       else if(INT0) begin
        if(interr_en) begin
        PC_out<=PC_hardware;
        mepc<=PC_next;
        interr_en<=0;
        end
        end
        else if(pc_src_control==2'b11) begin
            PC_out<= PC_jump;end
        else if(pc_src_control==2'b01) begin
            PC_out<= rs_rt_equal? PC_jump : PC_next; end
        else if(pc_src_control==2'b10) begin
        PC_out<= (!rs_rt_equal)? PC_jump:PC_next;end
        //ill
        else if(interr==2'b01&&interr_en) begin
        PC_out<=PC_ill;
        mepc<=PC_next;
        interr_en<=0;
        end
        //ecall
        else if(interr==2'b10&&interr_en) begin
        PC_out<=PC_ecall;
        mepc<=PC_next;
        interr_en<=0;
        end
        //mret
        else if(interr==2'b11&&(!interr_en)) begin
        PC_out<=mepc;
        interr_en<=1;
        end
        else  begin
             PC_out <= PC_next;   end
        end
    //reg
    wire[4:0] Rs1_addr;
    wire[4:0] Rs2_addr;
    wire[4:0] Wt_addr;
    assign 
    Rs1_addr=Inst_in[19:15],
    Rs2_addr=Inst_in[24:20],
    Wt_addr=Inst_in[11:7];
    reg [31:0] Wt_data;
    wire [31:0] Rs1_data;
    wire [31:0] Rs2_data;
    always @ (*) begin
        case(MemtoReg)
        2'b00: Wt_data = ALU_out;
        2'b01: Wt_data = Data_in;
        2'b10: Wt_data=PC_next;
        2'b11: Wt_data=Imm_out;
        endcase
        end
     Regs REG(
     .clk(clk),
     .rst(rst),
     .Rs1_addr(Rs1_addr),
     .Rs2_addr(Rs2_addr),
     .Wt_addr(Wt_addr),
     .Wt_data(Wt_data),
     .RegWrite(RegWrite),
     .Rs1_data(Rs1_data),
     .Rs2_data(Rs2_data)
     );
     assign rs_rt_equal = (Rs1_data==Rs2_data);
     //alu
    reg[31:0] alu_a;
    reg[31:0] alu_b;
    wire zero;
    wire [31:0] alu_out;
    always@(*)begin
    alu_a=Rs1_data;
    case(ALUSrc_B) 
    1'b0:alu_b=Rs2_data;
    1'b1: alu_b=Imm_out;
    endcase
    end
    alu ALU(
    .A(alu_a),
    .B(alu_b),
    .ALU_operation(ALU_operation),
    .res(alu_out),
    .zero(zero)
    );
    //Data_out and ALU_out
    always@(*) begin
    Data_out = Rs2_data;
    ALU_out = alu_out;
    end
endmodule
