`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/25 17:03:13
// Design Name: 
// Module Name: float_add
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

module float_add(
	input clk, 
	input rst,
	input [31:0] A,
	input [31:0] B,
	input [1:0] c,      // 00 +, 01 -, 10 *, 11 /
	input en,			// en = 1, begin
	output reg [31:0] result,
	output fin		// fin = 1 when finish
    );
	 

   reg[25:0] xm, ym, zm;  //尾数部分用26位：1位符号+2位进位标志+23位尾数

   reg[7:0]  xe, ye, ze;  //指数部分8位：

   reg[2:0] state; //操作状态

   parameter start=3'b000,zerock=3'b001,exequal=3'b010,addm=3'b011,infifl=3'b100,over =3'b110;           

   assign fin = (state == over) ? 1 : 0;        

   always@(posedge fin) //如果执行结束
   begin
      if(en)
        result <= {zm[25],ze[7:0],zm[22:0]};  // 将加法结果合成32位浮点，其中zm[25]为符号位
   end                                 

   always@(posedge clk)                //状态机：start->zerock->exequal->addm->infifl->over
        begin 
            case(state)
start:        //前端处理，分离尾数和指数，同时还原尾数
  begin 
xe <= A[30:23];//ix指数（8位）
xm <= {A[31],1'b0,1'b1,A[22:0]};//ix尾数=符号位+01+22位尾数
ye <= B[30:23];//iy指数
ym <= {B[31],1'b0,1'b1,B[22:0]};//iy尾数
state <= zerock;//下一状态
   end
zerock: 
   begin 
if(A == 0)//如果ix=0，结果为oz=iy
begin   
   {ze, zm} <= {ye, ym};
   state <= over;//结束态
end
else
if(B == 0)  //如果iy=0，结果为oz=ix
begin
   {ze, zm} <= {xe, xm};
    state <= over;
end
else
state <= exequal;
end

exequal:           //指数处理，使得指数相等
   begin 
 if(xe == ye)//如果指数已经相等了，则直接相加
state <= addm;  //进入加状态
 else 
if(xe > ye)
 begin
ye <= ye + 1;     //iy的指数加一      
ym[24:0] <= {1'b0, ym[24:1]}; //iy尾数右移一位?
if(ym == 0)  //如果尾数ym为0，继续移位也还是0，?
begin
zm <= xm;
ze <= xe;
state <= over;
end
else
 state <= exequal;//继续移指数?
 end
else      //xe
 begin
xe <= xe + 1;   //ix的指数加一               
xm[24:0] <= {1'b0,xm[24:1]};  //ix尾数右移一位?
if(xm == 0)   //如果尾数xm为0，继续移位也还是0，
 begin
zm <= ym;
ze <= ye;
state <= over;
 end
else
state <= exequal;//继续移指数?
  end
    end

addm:        //带符号位和保留进位的尾数相加

  begin 

if ((xm[25]^ym[25])==0) //第25位尾数相同（同号数相加）

  begin

      zm[25] <= xm[25];

      zm[24:0] <= xm[24:0]+ym[24:0]; //尾数相加

  end

else                   //异号数相加实际做尾数减法

   if(xm[24:0]>ym[24:0])  //xm>ym,

      begin

          zm[25] <= xm[25]; 

          zm[24:0] <=xm[24:0]-ym[24:0];  //尾数相减?

          end

       else             //xm

          begin

          zm[25] <= ym[25];

          zm[24:0] <=ym[24:0]-xm[24:0];           

          end    

 ze <= xe;

 state <= infifl;

  end

infifl:                   //尾数规格化处理

  begin 

if(zm[24]==1)    //和尾数最高位为1

   begin

     zm[24:0] <= {1'b0,zm[24:1]};     //和尾数右移一位，即小数点左移一位?

     ze <= ze + 1;   //和指数增加一

     state <= over;  

   end

else

if(zm[23]==0)   //和尾数的第23位为0

 begin

           zm[24:0] <= {zm[23:0],1'b0};  //和尾数左移一位，即小数点右移一位?

           ze <= ze - 1;  //和指数减少一  

           state <= infifl;    //继续执行尾数规格化状态

         end

       else

           state <= over;

 end

 over:

begin 

      state<= start; //回到初始状态 

end

 default:

begin

     state<= start;

end

endcase

 end

endmodule