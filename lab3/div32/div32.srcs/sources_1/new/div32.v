`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/21 10:08:22
// Design Name: 
// Module Name: div32
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


module div32(
        input    clk,
		input    rst,
		
        input    start,
        input    [31:0] dividend, 
        input    [31:0] divisor,
		
        output    finish,
        output    [31:0] quotient,
        output    [31:0] remainder
        ); 
    //确认除法正在进行
    reg div_valid;
    always @ (posedge clk)
    begin
        if(!start||finish)
        begin
            div_valid <=1'b0;
        end
        else
        begin
            div_valid <= 1'b1;
        end
    end
    //计算
    reg [5:0] cnt;
    reg [63:0] Remainder;
    wire [32:0] leftHalf;
    wire [32:0] Divisor;
    wire [32:0] diff;
    assign Divisor={1'b0,divisor[31:0]};
    assign leftHalf={1'b0,Remainder[63:32]};
    assign diff=leftHalf-Divisor;
	always @ (posedge clk)
	begin
	   if(div_valid)
	   begin
	   //更新循环次数
	   cnt <= cnt+1;
	   //已经循环32次，余数右移
	       if(diff[32])
	       //商左移补0
	       begin
	           Remainder = {Remainder[62:0],1'b0};
	           if(cnt==6'd31)
	           Remainder = {1'b0,Remainder[63:33],Remainder[31:0]};
	       end
	       else
	       //商左移补1，余=余-除
	       begin
	           Remainder = {diff[31:0],Remainder[31:0] }; 
	           Remainder = {Remainder[62:0],1'b1};
	           if(cnt==6'd31)
	           Remainder = {1'b0,Remainder[63:33],Remainder[31:0]};
	       end
	   end
	   //初始化
	   else if(start)
	   begin
	       Remainder <= {31'd0,dividend[31:0],1'b0};
	       cnt <= 6'd0;
	    end
	end	
	//输出信号
    assign remainder = Remainder[63:32];
    assign quotient = Remainder[31:0];
    assign finish = div_valid && (cnt==6'd32);
	endmodule

