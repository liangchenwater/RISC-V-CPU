`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 15:56:16
// Design Name: 
// Module Name: MUX8T1_32
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


module MUX8T1_32(       input [2:0]s,
						input [31:0]I0,
						input [31:0]I1,
						input [31:0]I2,
						input [31:0]I3,
						input [31:0]I4,
						input [31:0]I5,
						input [31:0]I6,
						input [31:0]I7,
						
						output reg[31:0]o

    );
    always@*
                case(s)
                    3'b000: o = I0;
                    3'b001: o = I1;
                    3'b010: o = I2;
                    3'b011: o = I3;
                    3'b100: o = I4;
                    3'b101: o = I5;
                    3'b110: o = I6;
                    3'b111: o = I7;
                endcase
endmodule
