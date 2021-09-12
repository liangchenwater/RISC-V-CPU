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
	 

   reg[25:0] xm, ym, zm;  //β��������26λ��1λ����+2λ��λ��־+23λβ��

   reg[7:0]  xe, ye, ze;  //ָ������8λ��

   reg[2:0] state; //����״̬

   parameter start=3'b000,zerock=3'b001,exequal=3'b010,addm=3'b011,infifl=3'b100,over =3'b110;           

   assign fin = (state == over) ? 1 : 0;        

   always@(posedge fin) //���ִ�н���
   begin
      if(en)
        result <= {zm[25],ze[7:0],zm[22:0]};  // ���ӷ�����ϳ�32λ���㣬����zm[25]Ϊ����λ
   end                                 

   always@(posedge clk)                //״̬����start->zerock->exequal->addm->infifl->over
        begin 
            case(state)
start:        //ǰ�˴�������β����ָ����ͬʱ��ԭβ��
  begin 
xe <= A[30:23];//ixָ����8λ��
xm <= {A[31],1'b0,1'b1,A[22:0]};//ixβ��=����λ+01+22λβ��
ye <= B[30:23];//iyָ��
ym <= {B[31],1'b0,1'b1,B[22:0]};//iyβ��
state <= zerock;//��һ״̬
   end
zerock: 
   begin 
if(A == 0)//���ix=0�����Ϊoz=iy
begin   
   {ze, zm} <= {ye, ym};
   state <= over;//����̬
end
else
if(B == 0)  //���iy=0�����Ϊoz=ix
begin
   {ze, zm} <= {xe, xm};
    state <= over;
end
else
state <= exequal;
end

exequal:           //ָ������ʹ��ָ�����
   begin 
 if(xe == ye)//���ָ���Ѿ�����ˣ���ֱ�����
state <= addm;  //�����״̬
 else 
if(xe > ye)
 begin
ye <= ye + 1;     //iy��ָ����һ      
ym[24:0] <= {1'b0, ym[24:1]}; //iyβ������һλ?
if(ym == 0)  //���β��ymΪ0��������λҲ����0��?
begin
zm <= xm;
ze <= xe;
state <= over;
end
else
 state <= exequal;//������ָ��?
 end
else      //xe
 begin
xe <= xe + 1;   //ix��ָ����һ               
xm[24:0] <= {1'b0,xm[24:1]};  //ixβ������һλ?
if(xm == 0)   //���β��xmΪ0��������λҲ����0��
 begin
zm <= ym;
ze <= ye;
state <= over;
 end
else
state <= exequal;//������ָ��?
  end
    end

addm:        //������λ�ͱ�����λ��β�����

  begin 

if ((xm[25]^ym[25])==0) //��25λβ����ͬ��ͬ������ӣ�

  begin

      zm[25] <= xm[25];

      zm[24:0] <= xm[24:0]+ym[24:0]; //β�����

  end

else                   //��������ʵ����β������

   if(xm[24:0]>ym[24:0])  //xm>ym,

      begin

          zm[25] <= xm[25]; 

          zm[24:0] <=xm[24:0]-ym[24:0];  //β�����?

          end

       else             //xm

          begin

          zm[25] <= ym[25];

          zm[24:0] <=ym[24:0]-xm[24:0];           

          end    

 ze <= xe;

 state <= infifl;

  end

infifl:                   //β����񻯴���

  begin 

if(zm[24]==1)    //��β�����λΪ1

   begin

     zm[24:0] <= {1'b0,zm[24:1]};     //��β������һλ����С��������һλ?

     ze <= ze + 1;   //��ָ������һ

     state <= over;  

   end

else

if(zm[23]==0)   //��β���ĵ�23λΪ0

 begin

           zm[24:0] <= {zm[23:0],1'b0};  //��β������һλ����С��������һλ?

           ze <= ze - 1;  //��ָ������һ  

           state <= infifl;    //����ִ��β�����״̬

         end

       else

           state <= over;

 end

 over:

begin 

      state<= start; //�ص���ʼ״̬ 

end

 default:

begin

     state<= start;

end

endcase

 end

endmodule