// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:hls:controller:1.0
// IP Revision: 2112495374

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_controller_0_0 (
  ap_local_block,
  ap_local_deadlock,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  axi_cmd_fifo_din,
  axi_cmd_fifo_full_n,
  axi_cmd_fifo_write,
  axi_rsp_fifo_dout,
  axi_rsp_fifo_empty_n,
  axi_rsp_fifo_read,
  uart_xmit_fifo_din,
  uart_xmit_fifo_full_n,
  uart_xmit_fifo_write
);

output wire ap_local_block;
output wire ap_local_deadlock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_CLK125, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 axi_cmd_fifo WR_DATA" *)
output wire [64 : 0] axi_cmd_fifo_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 axi_cmd_fifo FULL_N" *)
input wire axi_cmd_fifo_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 axi_cmd_fifo WR_EN" *)
output wire axi_cmd_fifo_write;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 axi_rsp_fifo RD_DATA" *)
input wire [33 : 0] axi_rsp_fifo_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 axi_rsp_fifo EMPTY_N" *)
input wire axi_rsp_fifo_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 axi_rsp_fifo RD_EN" *)
output wire axi_rsp_fifo_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 uart_xmit_fifo WR_DATA" *)
output wire [7 : 0] uart_xmit_fifo_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 uart_xmit_fifo FULL_N" *)
input wire uart_xmit_fifo_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 uart_xmit_fifo WR_EN" *)
output wire uart_xmit_fifo_write;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "inst" *)
  controller inst (
    .ap_local_block(ap_local_block),
    .ap_local_deadlock(ap_local_deadlock),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .axi_cmd_fifo_din(axi_cmd_fifo_din),
    .axi_cmd_fifo_full_n(axi_cmd_fifo_full_n),
    .axi_cmd_fifo_write(axi_cmd_fifo_write),
    .axi_rsp_fifo_dout(axi_rsp_fifo_dout),
    .axi_rsp_fifo_empty_n(axi_rsp_fifo_empty_n),
    .axi_rsp_fifo_read(axi_rsp_fifo_read),
    .uart_xmit_fifo_din(uart_xmit_fifo_din),
    .uart_xmit_fifo_full_n(uart_xmit_fifo_full_n),
    .uart_xmit_fifo_write(uart_xmit_fifo_write)
  );
endmodule
