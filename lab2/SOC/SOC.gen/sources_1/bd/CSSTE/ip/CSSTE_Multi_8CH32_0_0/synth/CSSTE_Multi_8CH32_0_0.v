// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:Multi_8CH32:1.0
// IP Revision: 2

// Forward declaration of the netlist blackbox
(* black_box = "1" *)
module Multi_8CH32 (
  EN,
  clk,
  rst,
  Data0,
  Disp_num,
  LES,
  LE_out,
  Test,
  data1,
  data2,
  data3,
  data4,
  data5,
  data6,
  data7,
  point_in,
  point_out
);
input wire EN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [31 : 0] Data0;
output wire [31 : 0] Disp_num;
input wire [63 : 0] LES;
output wire [7 : 0] LE_out;
input wire [2 : 0] Test;
input wire [31 : 0] data1;
input wire [31 : 0] data2;
input wire [31 : 0] data3;
input wire [31 : 0] data4;
input wire [31 : 0] data5;
input wire [31 : 0] data6;
input wire [31 : 0] data7;
input wire [63 : 0] point_in;
output wire [7 : 0] point_out;
endmodule
// End of netlist blackbox

(* X_CORE_INFO = "Multi_8CH32,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "CSSTE_Multi_8CH32_0_0,Multi_8CH32,{}" *)
(* CORE_GENERATION_INFO = "CSSTE_Multi_8CH32_0_0,Multi_8CH32,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=Multi_8CH32,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CSSTE_Multi_8CH32_0_0 (
  EN,
  clk,
  rst,
  Data0,
  Disp_num,
  LES,
  LE_out,
  Test,
  data1,
  data2,
  data3,
  data4,
  data5,
  data6,
  data7,
  point_in,
  point_out
);

input wire EN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [31 : 0] Data0;
output wire [31 : 0] Disp_num;
input wire [63 : 0] LES;
output wire [7 : 0] LE_out;
input wire [2 : 0] Test;
input wire [31 : 0] data1;
input wire [31 : 0] data2;
input wire [31 : 0] data3;
input wire [31 : 0] data4;
input wire [31 : 0] data5;
input wire [31 : 0] data6;
input wire [31 : 0] data7;
input wire [63 : 0] point_in;
output wire [7 : 0] point_out;

  Multi_8CH32 inst (
    .EN(EN),
    .clk(clk),
    .rst(rst),
    .Data0(Data0),
    .Disp_num(Disp_num),
    .LES(LES),
    .LE_out(LE_out),
    .Test(Test),
    .data1(data1),
    .data2(data2),
    .data3(data3),
    .data4(data4),
    .data5(data5),
    .data6(data6),
    .data7(data7),
    .point_in(point_in),
    .point_out(point_out)
  );
endmodule
