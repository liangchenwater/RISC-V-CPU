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


// IP VLNV: xilinx.com:user:SAnti_jitter:1.0
// IP Revision: 2

// Forward declaration of the netlist blackbox
(* black_box = "1" *)
module SAnti_jitter (
  CR,
  Key_ready,
  RSTN,
  clk,
  readn,
  rst,
  BTN_OK,
  Key_out,
  Key_x,
  Key_y,
  SW,
  SW_OK,
  pulse_out
);
output wire CR;
output wire Key_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTN, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTN RST" *)
input wire RSTN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET RSTN, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN CSSTE_clk_100mhz, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire readn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
output wire rst;
output wire [3 : 0] BTN_OK;
output wire [4 : 0] Key_out;
output wire [4 : 0] Key_x;
input wire [3 : 0] Key_y;
input wire [15 : 0] SW;
output wire [15 : 0] SW_OK;
output wire [3 : 0] pulse_out;
endmodule
// End of netlist blackbox

(* X_CORE_INFO = "SAnti_jitter,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "CSSTE_SAnti_jitter_0_0,SAnti_jitter,{}" *)
(* CORE_GENERATION_INFO = "CSSTE_SAnti_jitter_0_0,SAnti_jitter,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=SAnti_jitter,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CSSTE_SAnti_jitter_0_0 (
  CR,
  Key_ready,
  RSTN,
  clk,
  readn,
  rst,
  BTN_OK,
  Key_out,
  Key_x,
  Key_y,
  SW,
  SW_OK,
  pulse_out
);

output wire CR;
output wire Key_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTN, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTN RST" *)
input wire RSTN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET RSTN, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN CSSTE_clk_100mhz, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire readn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
output wire rst;
output wire [3 : 0] BTN_OK;
output wire [4 : 0] Key_out;
output wire [4 : 0] Key_x;
input wire [3 : 0] Key_y;
input wire [15 : 0] SW;
output wire [15 : 0] SW_OK;
output wire [3 : 0] pulse_out;

  SAnti_jitter inst (
    .CR(CR),
    .Key_ready(Key_ready),
    .RSTN(RSTN),
    .clk(clk),
    .readn(readn),
    .rst(rst),
    .BTN_OK(BTN_OK),
    .Key_out(Key_out),
    .Key_x(Key_x),
    .Key_y(Key_y),
    .SW(SW),
    .SW_OK(SW_OK),
    .pulse_out(pulse_out)
  );
endmodule
