`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/25 14:03:11
// Design Name: 
// Module Name: mul32
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


module mul32(
  input clk,
  input rst,
  input [31:0] multiplicand,
  input [31:0] multiplier,
  input start,
  output [63:0] product,
  output finish
    );
    //ȷ���˷��Ƿ����ڽ���
    reg mult_valid;
    always @ (posedge clk)
    begin
        if(!start || finish )
        begin
            mult_valid <= 1'b0;
        end
        else
        begin
            mult_valid <= 1'b1;
        end
    end
    //op1����
    reg [31:0] op1;
    always @ (posedge clk)
    begin
        if(mult_valid)
        begin
            op1 <= {op1[30:0],1'b0};
        end
        else if(start)
        begin
            op1 <= multiplicand;
        end
    end
    //op2����
    reg [31:0] op2;
    always @ (posedge clk)
    begin
        if(mult_valid)
        begin
            op2 <= {1'b0,op2[31:1]};
        end
        else if(start)
        begin
            op2 <= multiplier;
        end
    end
    wire [63:0] partial_product;
    assign partial_product = op2[0]?op1:64'd0;
    //�ۼ�
    reg [63:0] product_tmp;
    always @ (posedge clk)
    begin
        if(mult_valid)
        begin
            product_tmp <= product_tmp + partial_product;
        end
        else if(start) 
        begin
            product_tmp=64'd0;
        end
     end
     //����ź�
     assign product = product_tmp;
     assign finish =  mult_valid && (op2==32'd0);
endmodule