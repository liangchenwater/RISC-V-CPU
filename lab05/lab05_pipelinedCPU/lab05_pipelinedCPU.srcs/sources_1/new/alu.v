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
input wire [2:0] ALU_operation,
output reg [31:0] res,
output reg zero
    );
    always@(*) begin
        case(ALU_operation)
            3'b000:begin
            res = A&B; end
            3'b001:begin
            res= A|B; end
            3'b010:begin
            res=A+B; end
            3'b011:begin
            res=A^B;end
            3'b100:begin
            res=~(A|B);end
            3'b101:begin
            res=A >> B; end
            3'b110:begin
            res=A-B;end
            3'b111:begin
            res= $signed(A) < $signed(B);end
            endcase
            zero = (res==0)?1:0;
          end
endmodule
