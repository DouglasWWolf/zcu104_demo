//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun May  8 04:47:14 2022
//Host        : DESKTOP-06LMOH5 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK_125_N,
    CLK_125_P,
    CPU_RESET,
    GPIO_PB1,
    GPIO_PB2,
    GPIO_SW,
    UART2_TXD);
  input CLK_125_N;
  input CLK_125_P;
  input CPU_RESET;
  input GPIO_PB1;
  input GPIO_PB2;
  input [3:0]GPIO_SW;
  output UART2_TXD;

  wire CLK_125_N;
  wire CLK_125_P;
  wire CPU_RESET;
  wire GPIO_PB1;
  wire GPIO_PB2;
  wire [3:0]GPIO_SW;
  wire UART2_TXD;

  design_1 design_1_i
       (.CLK_125_N(CLK_125_N),
        .CLK_125_P(CLK_125_P),
        .CPU_RESET(CPU_RESET),
        .GPIO_PB1(GPIO_PB1),
        .GPIO_PB2(GPIO_PB2),
        .GPIO_SW(GPIO_SW),
        .UART2_TXD(UART2_TXD));
endmodule
