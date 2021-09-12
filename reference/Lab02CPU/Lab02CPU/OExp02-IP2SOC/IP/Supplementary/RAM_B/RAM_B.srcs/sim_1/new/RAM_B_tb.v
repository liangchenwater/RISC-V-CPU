`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/20 16:43:33
// Design Name: 
// Module Name: RAM_B_tb
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


module RAM_B_tb();

            reg           clka;
            reg           wea;
            reg  [9 : 0]  addra;
            reg  [31 : 0] dina;
            wire [31 : 0] douta;
            
   always #10 clka = ~clka;
   
   RAM_B RAM_B_U (
        .clka(clka),    // input wire clka
        .wea(wea),      // input wire [0 : 0] wea
        .addra(addra),  // input wire [9 : 0] addra
        .dina(dina),    // input wire [31 : 0] dina
        .douta(douta)  // output wire [31 : 0] douta
    );
    
   initial begin
   clka = 0;
   wea  = 0;        //read
   dina = 0;
   addra = 0;
   #10 ;
   wea  = 0;
   addra = 10'd0;
   #20;
   wea  = 0;
   addra = 10'h0;
   #20;
   wea  = 0;
   addra = 10'h1;
   #20;
   wea  = 0;
   addra = 10'h2;
   #20;
   wea  = 0;
   addra = 10'h3;
   #20;
   wea  = 0;
   addra = 10'h4;
   #20;
   wea  = 0;
   addra = 10'h5;
   #20;
   wea  = 0;
   addra = 10'h6;
   #20;
   wea  = 0;
   addra = 10'h7;
   #20;
   wea  = 0;
   addra = 10'h8;
   #20;          
   wea  = 0;     
   addra = 10'h9;
   #20;          
   wea  = 0;     
   addra = 10'ha;
   #20;          
   wea  = 0;     
   addra = 10'hb;
   #20;          
   wea  = 0;     
   addra = 10'hc;
   #20;          
   wea  = 0;     
   addra = 10'hd;
   #20;          
   wea  = 0;     
   addra = 10'he;
   #20;          
   wea  = 0;     
   addra = 10'hf;
   #20;          
   wea  = 0;     
   addra = 10'h10;
   #20;          
   wea  = 0;     
   addra = 10'h11;
   #20;          
   wea  = 0;     
   addra = 10'h12;
   #20;          
   wea  = 0;     
   addra = 10'h13;
   #20;          
   wea  = 0;     
   addra = 10'h14;
   #20;          
   wea  = 0;     
   addra = 10'h15;
   #20;          
   wea  = 0;     
   addra = 10'h16;
   #20;          
   wea  = 0;     
   addra = 10'h17;
   #20;          
   wea  = 0;     
   addra = 10'h18;
   
   
   
   
   
   
   
   
   #20;
   $stop();
   end
endmodule
