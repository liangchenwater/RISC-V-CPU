`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/16 12:37:27
// Design Name: 
// Module Name: SCPU_ctrl
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


module controller(
    input INT0,
    input [4:0] OPcode,
    input [2:0] Fun3,
    input Fun7,
    input[11:0] Fun12, //used for system call
    input MIO_ready,
    output reg[2:0] ImmSel,
    output reg ALUSrc_B,
    output reg[1:0] MemtoReg, //00:alu, 01:mem 10:pc+4 11:imm_out (for lui)
    output reg[2:0] pc_src_control, //01:beq, 10:bne, 11:jmp, 100: ill, 101:ecall, 110: mret, 111: hardware
    output reg RegWrite,
    output reg MemRW,
    output reg [3:0] ALU_Control,
    output reg CPU_MIO,
    output reg[1:0] interr //01: ill, 10: system call(ecall and mret), 11:hardware
    );
    reg [1:0] ALUop;
   `define CPU_ctrl_signals {ALUSrc_B, MemtoReg, RegWrite, MemRW,pc_src_control,ALUop, ImmSel,interr}
    always @*begin
    if(INT0) begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,3'b111,2'b00,3'b000,2'b11}; end //hardware
    else begin
        case(OPcode)
        5'b01100: begin `CPU_ctrl_signals={1'b0,2'b00,1'b1,1'b0,3'b000,2'b00,3'b000,2'b00}; end //ALU
        5'b00000: begin `CPU_ctrl_signals={1'b1,2'b01,1'b1,1'b0,3'b000,2'b01,3'b000,2'b00}; end //Load
        5'b01000: begin `CPU_ctrl_signals={1'b1,2'b00,1'b0,1'b1,3'b000,2'b10,3'b001,2'b00}; end //Store
        5'b11000: begin
        case(Fun3)
        3'b000: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,3'b001,2'b11,3'b010,2'b00}; end //Beq
        3'b001: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,3'b010,2'b11,3'b010,2'b00}; end //Bne
        //ill_instruction
        default: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,3'b100,2'b00,3'b000,2'b01}; end
        endcase
        end
        5'b11011: begin `CPU_ctrl_signals={1'b0,2'b10,1'b1,1'b0,3'b011,2'b00,3'b011,2'b00}; end //Jump
        5'b00100: begin `CPU_ctrl_signals={1'b1,2'b00,1'b1,1'b0,3'b000,2'b01,3'b000,2'b00}; end //Imm
        5'b11100:  begin//system
        case(Fun12)
        12'h000: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,3'b101,2'b00,3'b000,2'b10};end //ecall
        12'h302: begin  `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,3'b110,2'b00,3'b000,2'b10};end //mret
         //ill_instruction
        default: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,3'b100,2'b00,3'b000,2'b01}; end
        endcase
        end
        5'b01101: begin `CPU_ctrl_signals={1'b1,2'b11,1'b1,1'b0,3'b000,2'b01,3'b100,2'b00};end//lui (U-type)
          //ill_instruction
        default: begin `CPU_ctrl_signals={1'b0,2'b10,1'b0,1'b0,3'b100,2'b00,3'b000,2'b01}; end
        endcase
        end
        end
    
    wire[3:0] Fun;
    assign Fun={Fun3,Fun7};
    always@ * begin 
        case(ALUop)
            2'b10:ALU_Control=4'b0010; //addr addition
            2'b11:ALU_Control= 4'b0110 ; //sub for branch
            2'b00:
            case(Fun)
                4'b0000: ALU_Control=4'b0010; //add
                4'b0001: ALU_Control=4'b0110 ;//sub
                4'b1110: ALU_Control=4'b0000;//and 
                4'b1100: ALU_Control=4'b0001;//or 
                4'b0100: ALU_Control=4'b0111; //slt
                4'b0110: ALU_Control=4'b1000; //sltu
                4'b1010: ALU_Control=4'b0101; //srl
                4'b0010: ALU_Control=4'b0100; //sll
                4'b1000: ALU_Control=4'b0011; //xor
                default: begin
                //ill alu
                if(OPcode==5'b01100) begin
                MemtoReg=2'b10;
               pc_src_control=3'b100;
               interr=2'b01;
                ALU_Control=4'bx;
                end
               else begin ALU_Control=4'bx;end
                end
             endcase
             2'b01:
             case(OPcode)
                5'b00000: ALU_Control=4'b0010;//load
                5'b00100: //Imm
             case(Fun3)
                3'b010: ALU_Control=4'b0111;//slti
                3'b000: ALU_Control=4'b0010;//addi
               3'b100: ALU_Control=4'b0011;//xori
                3'b110: ALU_Control=4'b0001;//ori
                3'b111: ALU_Control=4'b0000;//andi
                3'b101: ALU_Control=4'b0101;//srli
                3'b001: ALU_Control=4'b0100;//slli
                //ill imm
               default: begin
               MemtoReg=2'b10;
               pc_src_control=3'b100;
               interr=2'b01;
               ALU_Control=4'bx;
               end
           endcase
           //U-type(lui)
           default: ALU_Control=4'bx;
                 endcase
        endcase
      end
endmodule
