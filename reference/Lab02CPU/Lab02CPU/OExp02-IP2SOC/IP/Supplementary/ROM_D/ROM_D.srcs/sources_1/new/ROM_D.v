`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/20 09:18:02
// Design Name: 
// Module Name: ROM_D
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


module ROM_D(input wire [9 : 0] a,
             output wire [31 : 0] spo

    );
    ROM_D ROM (
      .a(a),      // input wire [9 : 0] a
      .spo(spo)  // output wire [31 : 0] spo
    );
endmodule
