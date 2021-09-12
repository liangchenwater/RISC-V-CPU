`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 19:42:05
// Design Name: 
// Module Name: Pipeline_WB
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


module Pipeline_WB(
input wire [1:0] MemtoReg_in_WB,
input wire[31:0] ALU_in_WB,
input wire[31:0]DMem_data_WB,
input wire [31:0] PC4_in_WB,
output reg [31:0] Data_out_WB
 );
 always @(*) begin
 case(MemtoReg_in_WB)
 2'b00:begin Data_out_WB<=ALU_in_WB; end
 2'b01:begin Data_out_WB<=DMem_data_WB;end
 2'b10:begin Data_out_WB<=PC4_in_WB;end
 2'b11:begin Data_out_WB<=PC4_in_WB;end
 endcase
 end
endmodule
