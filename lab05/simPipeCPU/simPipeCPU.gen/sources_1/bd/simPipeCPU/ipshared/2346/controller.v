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
    input rst,
    input [4:0] OPcode,
    input [2:0] Fun3,
    input Fun7,
    input[4:0] Rs1_addr_id,
    input[4:0] Rs2_addr_id,
    input Rs1_used_id,
    input Rs2_used_id,
    input[4:0] Rd_addr_ex,
    input[4:0] Rd_addr_mem,
    input[1:0] pc_src_id,
    output reg[1:0] ImmSel,
    output reg ALUSrc_B,
    output reg[1:0] MemtoReg,
    //0-next
    //1-branch
    //2-branchn
    //3-jump
    output reg[1:0] pc_src_control,
    output reg RegWrite,
    output reg MemRW,
    output reg [2:0] ALU_Control,
    output reg if_rst,  // stage reset signal
	output reg if_en,  // stage enable signal
	output reg id_rst,
	output reg id_en,
	output reg ex_rst,
	output reg ex_en,
	output reg mem_rst,
	output reg mem_en,
	output reg Rs1_used,
    output reg Rs2_used
    );
    
    //first stage "decoding"
    reg [1:0] ALUop;
   `define CPU_ctrl_signals {ALUSrc_B, MemtoReg, RegWrite, MemRW,pc_src_control,ALUop, ImmSel,Rs1_used,Rs2_used}
    always @*begin
        case(OPcode)
        5'b01100: begin `CPU_ctrl_signals={1'b0,2'b00,1'b1,1'b0,2'b00,2'b00,2'b00,1'b1,1'b1}; end //ALU
        5'b00000: begin `CPU_ctrl_signals={1'b1,2'b01,1'b1,1'b0,2'b00,2'b01,2'b00,1'b1,1'b0}; end //Load
        5'b01000: begin `CPU_ctrl_signals={1'b1,2'b00,1'b0,1'b1,2'b00,2'b10,2'b01,1'b1,1'b1}; end //Store
        5'b11000: begin 
        case(Fun3)
        1'b0: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,2'b01,2'b11,2'b10,1'b1,1'b1}; end //Beq
        1'b1: begin `CPU_ctrl_signals={1'b0,2'b00,1'b0,1'b0,2'b10,2'b11,2'b10,1'b1,1'b1}; end //Bne
        endcase
        end
        5'b11011: begin `CPU_ctrl_signals={1'b0,2'b10,1'b1,1'b0,2'b11,2'b00,2'b11,1'b0,1'b0}; end //Jump
        5'b00100: begin `CPU_ctrl_signals={1'b1,2'b00,1'b1,1'b0,2'b00,2'b01,2'b00,1'b1,1'b0}; end //Imm
        endcase
    end
    
    //second stage "decoding"
    wire[3:0] Fun;
    assign Fun={Fun3,Fun7};
    always@ * begin 
        case(ALUop)
            2'b10:ALU_Control=3'b010; //addr addition
            2'b11:ALU_Control= 3'b110 ; //sub for beq
            2'b00:
            case(Fun)
                4'b0000: ALU_Control=3'b010; //add
                4'b0001: ALU_Control=3'b110 ;//sub
                4'b1110: ALU_Control=3'b000;//and 
                4'b1100: ALU_Control=3'b001;//or 
                4'b0100: ALU_Control=3'b111; //slt
                4'b1010: ALU_Control=3'b101; //srl
                4'b1000: ALU_Control=3'b011; //xor
                default: ALU_Control=3'bx;
             endcase
             2'b01:
             case(OPcode)
                5'b00000: ALU_Control=3'b010;//load
                5'b00100: //Imm
             case(Fun3)
                3'b010: ALU_Control=3'b111;//slti
                3'b000: ALU_Control=3'b010;//addi
               3'b100: ALU_Control=3'b011;//xori
                3'b110: ALU_Control=3'b001;//ori
                3'b111: ALU_Control=3'b000;//andi
                3'b101: ALU_Control=3'b101;//srli
                //jalr
               default:ALU_Control=3'bx;
           endcase
           default: ALU_Control=3'bx;
                 endcase
        endcase
      end
      
      //pipeline control
      reg Data_stall;
      reg Control_stall;
      //data hazards
      always @ * begin
      Data_stall=0;
      if(Rs1_used_id && Rs1_addr_id!=0 && Rs1_addr_id==Rd_addr_ex) begin Data_stall=1; end
      else if(Rs1_used_id && Rs1_addr_id!=0 && Rs1_addr_id==Rd_addr_mem) begin Data_stall=1; end
      else if(Rs2_used_id && Rs2_addr_id!=0 && Rs2_addr_id==Rd_addr_ex) begin Data_stall=1; end
      else if(Rs2_used_id && Rs2_addr_id!=0 && Rs2_addr_id==Rd_addr_mem) begin Data_stall=1; end
      end
      //control hazards
      always @ * begin
      Control_stall=0;
      if(pc_src_control||pc_src_id==2'b01||pc_src_id==2'b10) begin Control_stall=1; end
      end
    
    //flush
    always @(*) begin
		if_rst = 0;
		id_rst = 0;
		ex_rst = 0;
		mem_rst = 0;
		if_en = 1;
		id_en = 1;
		ex_en = 1;
		mem_en = 1;
		if (rst) begin
			if_rst = 1;
			id_rst = 1;
			ex_rst = 1;
			mem_rst = 1;
		end
		// the instruction to write:MEM, WB. stall 2 clocks.
		else if (Data_stall) begin
			if_en = 0;
			id_en = 0;
			ex_rst = 1;
		end
		//For the instruction may branch: ID,EX. stall 3 clocks. For the insturction may jump: ID. stall 2 clock.
		else if (Control_stall) begin
		    if_rst=1;
		end
	end
endmodule
