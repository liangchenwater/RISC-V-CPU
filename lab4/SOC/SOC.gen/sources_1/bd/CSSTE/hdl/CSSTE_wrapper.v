//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Jun 28 14:47:44 2021
//Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
//Command     : generate_target CSSTE_wrapper.bd
//Design      : CSSTE_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CSSTE_wrapper
   (BTN_y,
    Blue,
    Green,
    HSYNC,
    LED_PEN,
    RSTN,
    Red,
    SEG_PEN,
    SW,
    VSYNC,
    clk_100mhz,
    led_clk,
    led_clrn,
    led_sout,
    seg_clk,
    seg_clrn,
    seg_sout);
  input [3:0]BTN_y;
  output [3:0]Blue;
  output [3:0]Green;
  output HSYNC;
  output LED_PEN;
  input RSTN;
  output [3:0]Red;
  output SEG_PEN;
  input [15:0]SW;
  output VSYNC;
  input clk_100mhz;
  output led_clk;
  output led_clrn;
  output led_sout;
  output seg_clk;
  output seg_clrn;
  output seg_sout;

  wire [3:0]BTN_y;
  wire [3:0]Blue;
  wire [3:0]Green;
  wire HSYNC;
  wire LED_PEN;
  wire RSTN;
  wire [3:0]Red;
  wire SEG_PEN;
  wire [15:0]SW;
  wire VSYNC;
  wire clk_100mhz;
  wire led_clk;
  wire led_clrn;
  wire led_sout;
  wire seg_clk;
  wire seg_clrn;
  wire seg_sout;

  CSSTE CSSTE_i
       (.BTN_y(BTN_y),
        .Blue(Blue),
        .Green(Green),
        .HSYNC(HSYNC),
        .LED_PEN(LED_PEN),
        .RSTN(RSTN),
        .Red(Red),
        .SEG_PEN(SEG_PEN),
        .SW(SW),
        .VSYNC(VSYNC),
        .clk_100mhz(clk_100mhz),
        .led_clk(led_clk),
        .led_clrn(led_clrn),
        .led_sout(led_sout),
        .seg_clk(seg_clk),
        .seg_clrn(seg_clrn),
        .seg_sout(seg_sout));
endmodule
