`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/20 16:42:02
// Design Name: 
// Module Name: RAM_B
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


module RAM_B(input clka,
             input wea,
             input wire [9 : 0] addra,
             input wire [31 : 0] dina,
             output wire [31 : 0] douta                                

    );
    RAM RAM_B (
      .clka(clka),    // input wire clka
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [9 : 0] addra
      .dina(dina),    // input wire [31 : 0] dina
      .douta(douta)  // output wire [31 : 0] douta
    );
endmodule
