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


// IP VLNV: xilinx.com:user:SPIO:1.0
// IP Revision: 2

// Forward declaration of the netlist blackbox
(* black_box = "1" *)
module SPIO (
  EN,
  LED_PEN,
  Start,
  clk,
  led_clk,
  led_clrn,
  led_sout,
  rst,
  GPIOf0,
  LED_out,
  P_Data,
  counter_set
);
input wire EN;
output wire LED_PEN;
input wire Start;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME led_clk, ASSOCIATED_BUSIF led_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN CSSTE_SPIO_0_0_led_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 led_clk CLK" *)
output wire led_clk;
output wire led_clrn;
output wire led_sout;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
output wire [13 : 0] GPIOf0;
output wire [15 : 0] LED_out;
input wire [31 : 0] P_Data;
output wire [1 : 0] counter_set;
endmodule
// End of netlist blackbox

(* X_CORE_INFO = "SPIO,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "CSSTE_SPIO_0_0,SPIO,{}" *)
(* CORE_GENERATION_INFO = "CSSTE_SPIO_0_0,SPIO,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=SPIO,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CSSTE_SPIO_0_0 (
  EN,
  LED_PEN,
  Start,
  clk,
  led_clk,
  led_clrn,
  led_sout,
  rst,
  GPIOf0,
  LED_out,
  P_Data,
  counter_set
);

input wire EN;
output wire LED_PEN;
input wire Start;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME led_clk, ASSOCIATED_BUSIF led_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN CSSTE_SPIO_0_0_led_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 led_clk CLK" *)
output wire led_clk;
output wire led_clrn;
output wire led_sout;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
output wire [13 : 0] GPIOf0;
output wire [15 : 0] LED_out;
input wire [31 : 0] P_Data;
output wire [1 : 0] counter_set;

  SPIO inst (
    .EN(EN),
    .LED_PEN(LED_PEN),
    .Start(Start),
    .clk(clk),
    .led_clk(led_clk),
    .led_clrn(led_clrn),
    .led_sout(led_sout),
    .rst(rst),
    .GPIOf0(GPIOf0),
    .LED_out(LED_out),
    .P_Data(P_Data),
    .counter_set(counter_set)
  );
endmodule
