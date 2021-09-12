`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 20:14:02
// Design Name: 
// Module Name: Pipeline_Mem
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


module Pipeline_Mem(
input wire Branch_in_Mem,
input wire zero_in_Mem,
input wire BranchN_in_Mem,
input wire Jump_in_Mem,
output reg PCSrc
);
wire zeroN_in_Mem;
assign zeroN_in_Mem=~zero_in_Mem;

always @(*) begin 
PCSrc<=Jump_in_Mem | ( (Branch_in_Mem&zero_in_Mem) | (BranchN_in_Mem&zeroN_in_Mem) );
end
endmodule
