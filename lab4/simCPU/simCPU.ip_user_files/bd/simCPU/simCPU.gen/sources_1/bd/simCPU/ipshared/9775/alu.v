`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/19 13:04:01
// Design Name: 
// Module Name: alu
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


module alu(
input wire [31:0] A,B,
input wire [3:0] ALU_operation,
output reg [31:0] res,
output reg zero
    );
    always@(*) begin
        case(ALU_operation)
            4'b0000:begin
            res = A&B; end
            4'b0001:begin
            res= A|B; end
            4'b0010:begin
            res=A+B; end
            4'b0011:begin
            res=A^B;end
            4'b0100:begin
            res=A << B;end
            4'b0101:begin
            res=A >> B; end
            4'b0110:begin
            res=A-B;end
            4'b0111:begin
            res= $signed(A) < $signed(B);end
            4'b1000: begin
            res= A < B;
            end
            default: res=31'bx;
            endcase
            zero = (res==0)?1:0;
          end
endmodule
