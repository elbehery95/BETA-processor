`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:54 02/10/2017 
// Design Name: 
// Module Name:    BETA_TOP 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BETA_TOP(
	 input CLK,
    input RESET,
    input IRQ,
	 
    output [31:0] IA,
    output [31:0] ID,
    output [31:0] MA,
    output MOE,
    output MWR,
    output [31:0] MRD,
    output [31:0] MWD
    );

//internal wires, signals here


//MAIN_MEM data_mem (
//  .clka(CLK), // input clka
//  .wea(MWR), // input [0 : 0] wea
//  .addra(MA[12:2]), // input [10 : 0] addra
//  .dina(MWD), // input [31 : 0] dina
//  .clkb(CLK), // input clkb
//  .addrb(MA[12:2]), // input [10 : 0] addrb
//  .doutb(MRD) // output [31 : 0] doutb
//);

MAIN_DIST_MEM data_mem (
  .a(MA[11:2]), // input [9 : 0] a
  .d(MWD), // input [31 : 0] d
  .dpra(MA[12:2]), // input [9 : 0] dpra
  .clk(CLK), // input clk
  .we(MWR), // input we
  .dpo(MRD) // output [31 : 0] dpo
);


//MAIN_MEM instruct_mem (
//  .clka(CLK), // input clka
//  .wea(MWR), // input [0 : 0] wea
//  .addra(MA[12:2]), // input [10 : 0] addra
//  .dina(MWD), // input [31 : 0] dina
//  .clkb(CLK), // input clkb
//  .addrb(IA[12:2]), // input [10 : 0] addrb
//  .doutb(ID) // output [31 : 0] doutb
//);

MAIN_DIST_MEM instruct_mem (
  .a(MA[11:2]), // input [9 : 0] a
  .d(MWD), // input [31 : 0] d
  .dpra(IA[12:2]), // input [9 : 0] dpra
  .clk(CLK), // input clk
  .we(MWR), // input we
  .dpo(ID) // output [31 : 0] dpo
);

BETA_CORE beta (
    .CLK(CLK), 
    .RESET(RESET), 
    .IRQ(IRQ), 
    .MRD(MRD),   
    .ID(ID),     
	 
    .IA(IA), 
    .MA(MA), 
    .MOE(MOE), 
    .MWR(MWR), 
    .MWD(MWD)
    );

endmodule
