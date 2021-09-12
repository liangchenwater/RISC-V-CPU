`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 17:56:56
// Design Name: 
// Module Name: cache
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


module cache(
input clk,
input rst,
input[31:0] data_cpu_wt,
input[127:0] data_mem_rd,
input[31:0] addr_cpu,
input wt_cpu,
input rd_cpu,
input mem_ready,
output reg wt_mem,
output reg rd_mem,
output reg[127:0] data_mem_wt,
output reg[31:0] data_cpu_rd
);

 reg[1:0] state;
 reg[1:0] next_state;
 wire cpu_req_valid;
 wire dirty;
 
 wire[25:0] tag_out_orig0;
 wire[25:0] tag_out_orig1;
 wire[22:0] tag_out0;
 wire[22:0] tag_out1;
 reg[25:0] tag_in0;
 reg[25:0] tag_in1;
 
 wire[127:0] dout0;
 wire[127:0] dout1;
 reg[127:0] din0;
 reg[127:0] din1;
 
 wire[22:0] cpu_tag;
 wire[6:0] cpu_idx;
 wire[1:0] cpu_offset;
 

 reg wt0;
 reg wt1;
 reg wt_t0;
 reg wt_t1;
 reg hit;
 
 assign cpu_req_valid=rd_cpu|wt_cpu;
 assign tag_out0=tag_out_orig0[22:0],tag_out1=tag_out_orig1[22:0];
 assign cpu_tag=addr_cpu[31:9], cpu_idx=addr_cpu[8:2],cpu_offset=addr_cpu[1:0];
 assign dirty=tag_out_orig1[23]?tag_out_orig0[24]:tag_out_orig1[24];
 
 Data_ram d0(
 .clk(~clk),
 .addr(cpu_idx),
 .rst(rst),
 .en(1),
 .wt(wt0),
 .din(din0),
 .dout(dout0)
 );
 
 Data_ram d1(
 .clk(~clk),
 .addr(cpu_idx),
 .rst(rst),
 .en(1),
 .wt(wt1),
 .din(din1),
 .dout(dout1)
 );
 
 Tag_ram t0(
 .clk(~clk),
 .addr(cpu_idx),
 .rst(rst),
 .en(1),
 .wt(wt_t0),
 .din(tag_in0),
 .dout(tag_out_orig0)
 );
 
 Tag_ram t1(
 .clk(~clk),
 .addr(cpu_idx),
 .rst(rst),
 .en(1),
 .wt(wt_t1),
 .din(tag_in1),
 .dout(tag_out_orig1)
 );
 
 always @(posedge clk or posedge rst)
 begin
 if(rst) begin 
 state<=0;
 wt0<=0;
 wt1<=0;
 wt_t0<=0;
 wt_t1<=0;
 end
 else begin
 state<=next_state;
 end
end 

 always @ (*) begin
 case(state)
 //IDLE
 2'b00: begin
 wt0<=0;
 wt1<=0;
 wt_t0<=0;
 wt_t1<=0;
 if(cpu_req_valid) begin next_state<=2'b01; end
 else begin next_state<=2'b00;end
 end
 //Compare Tag
 2'b01:begin
 //hit
 if(tag_out0==cpu_tag||tag_out1==cpu_tag) begin 
 hit<=1;
 next_state<=2'b00;
 wt_t0<=1;
 wt_t1<=1;
 if(tag_out0==cpu_tag) begin
 if(rd_cpu) begin 
 tag_in0<={3'b101,tag_out0[22:0]}; 
 tag_in1<={tag_out_orig1[25:24],1'b0,tag_out1[22:0]};
 case(cpu_offset)
 2'b00: begin data_cpu_rd<=dout0[31:0] ;end
 2'b01:begin data_cpu_rd<=dout0[63:32]; end
 2'b10: begin data_cpu_rd<=dout0[95:64]; end
 2'b11: begin data_cpu_rd<=dout0[127:96]; end
 endcase
 end
 else if(wt_cpu) begin 
 tag_in0<={3'b111,tag_out0[22:0]};
 tag_in1<={tag_out_orig1[25:24],1'b0,tag_out1[22:0]};
  case(cpu_offset)
 2'b00:begin din0<={dout0[127:32],data_cpu_wt}; end
 2'b01:begin din0<={dout0[127:64],data_cpu_wt,dout0[31:0]}; end
 2'b10:begin din0<={dout0[127:96],data_cpu_wt,dout0[63:0]}; end
 2'b11:begin din0<={data_cpu_wt,dout0[95:0]}; end
 endcase
 wt0<=1;
 end
 end
 else if(tag_out1==cpu_tag) begin
  if(rd_cpu) begin 
  tag_in1<={3'b101,tag_out1[22:0]};
  tag_in0<={tag_out_orig0[25:24],1'b0,tag_out0[22:0]};
  case(cpu_offset)
 2'b00: begin data_cpu_rd<=dout1[31:0] ;end
 2'b01:begin data_cpu_rd<=dout1[63:32]; end
 2'b10: begin data_cpu_rd<=dout1[95:64]; end
 2'b11: begin data_cpu_rd<=dout1[127:96]; end
 endcase
   end
 else if(wt_cpu) begin
  tag_in1<={3'b111,tag_out1[22:0]};
   tag_in0<={tag_out_orig0[25:24],1'b0,tag_out0[22:0]};
 case(cpu_offset)
 2'b00:begin din1<={dout1[127:32],data_cpu_wt}; end
 2'b01:begin din1<={dout1[127:64],data_cpu_wt,dout1[31:0]}; end
 2'b10:begin din1<={dout1[127:96],data_cpu_wt,dout1[63:0]}; end
 2'b11:begin din1<={data_cpu_wt,dout1[95:0]}; end
 endcase
 wt1<=1;
 end //wt
 end //the second way
 end //hit
 //not hit, replace
 else if(dirty) begin  hit<=0;next_state<=2'b10;end
 else begin hit<=0;next_state<=2'b11;end
 end
 //Write Back
2'b10:begin
if(mem_ready) begin
 next_state<=2'b11;
 wt_mem<=1;
data_mem_wt<=tag_out_orig1[23]?dout0:dout1;
  end
else begin
next_state<=2'b10;
end
end
//Allocate
2'b11:begin
if(mem_ready) begin
 next_state<=2'b00;
 rd_mem<=1;
if(tag_out_orig1[23])begin 
din0<=data_mem_rd; 
wt0<=1;
tag_in0<={3'b000,cpu_tag[22:0]};
wt_t0<=1;
end
else if(tag_out_orig0[23])begin 
din1<=data_mem_rd;
tag_in1<={3'b000,cpu_tag[22:0]};
wt1<=1;
wt_t1<=1;
end
//the first data in
else begin
din0<=data_mem_rd;
wt0<=1;
tag_in0<={3'b000,cpu_tag[22:0]};
wt_t0<=1;
end
 end
else begin 
next_state<=2'b11; end
end
default: begin next_state<=2'b00; end
 endcase
 end
 
endmodule
