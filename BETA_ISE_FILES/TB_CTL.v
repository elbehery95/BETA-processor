`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abdelrahman Elbehery
//
// Create Date:   00:39:07 02/10/2017
// Design Name:   CTL
// Module Name:   F:/Self learning/FPGA/Projects/BETA_ISE/TB_CTL.v
// Project Name:  BETA_ISE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CTL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_CTL;

  reg CLK=0;
  integer weAreOk=1;

  task PRINT;
    input integer CN;
    input [5:0] ALUFN;
    input [5:0] ExALUFN;
  input ASEL;
  input ExASEL;
  input BSEL;
  input ExBSEL;
  input MOE;
  input ExMOE;
  input MWR;
  input ExMWR;
    input [2:0] PCSEL;
    input [2:0] ExPCSEL;
  input RA2SEL;
  input ExRA2SEL;
  input WASEL;
  input ExWASEL;
    input [1:0] WDSEL;
    input [1:0] ExWDSEL;
  input WERF;
  input ExWERF;
    if( ALUFN!=ExALUFN | ASEL!=ExASEL | BSEL!=ExBSEL | MOE!=ExMOE | MWR!=ExMWR | PCSEL!=ExPCSEL | RA2SEL!=ExRA2SEL | WASEL!=ExWASEL | WDSEL!=ExWDSEL | WERF!=ExWERF ) begin
    $display("Error in case: %d\nALUFN: %b\nExpected: %b\nASEL: %b\nExpected: %b\nBSEL: %b\nExpected: %b\nMOE: %b\nExpected: %b\nMWR: %b\nExpected: %b\nPCSEL: %b\nExpected: %b\nRA2SEL: %b\nExpected: %b\nWASEL: %b\nExpected: %b\nWDSEL: %b\nExpected: %b\nWERF: %b\nExpected: %b\n",CN,ALUFN,ExALUFN,ASEL,ExASEL,BSEL,ExBSEL,MOE,ExMOE,MWR,ExMWR,PCSEL,ExPCSEL,RA2SEL,ExRA2SEL,WASEL,ExWASEL,WDSEL,ExWDSEL,WERF,ExWERF);
    weAreOk=0;
    end
  endtask

  reg [5:0] OP;
  reg  RESET;
  reg  IRQ;
  reg  Z;
  wire [5:0] ALUFN;
  wire  ASEL;
  wire  BSEL;
  wire  MOE;
  wire  MWR;
  wire [2:0] PCSEL;
  wire  RA2SEL;
  wire  WASEL;
  wire [1:0] WDSEL;
  wire  WERF;

  CTL uut(.OP(OP),.RESET(RESET),.IRQ(IRQ),.Z(Z),.ALUFN(ALUFN),.ASEL(ASEL),.BSEL(BSEL),.MOE(MOE),.MWR(MWR),.PCSEL(PCSEL),.RA2SEL(RA2SEL),.WASEL(WASEL),.WDSEL(WDSEL),.WERF(WERF));



initial begin
  //CASE: 1
  OP=6'b000000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(1,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 2
  OP=6'b000000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(2,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 3
  OP=6'b000000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(3,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 4
  OP=6'b000000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(4,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 5
  OP=6'b000000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(5,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 6
  OP=6'b000000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(6,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 7
  OP=6'b000000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(7,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 8
  OP=6'b000000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(8,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 9
  OP=6'b000001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(9,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 10
  OP=6'b000001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(10,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 11
  OP=6'b000001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(11,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 12
  OP=6'b000001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(12,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 13
  OP=6'b000001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(13,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 14
  OP=6'b000001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(14,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 15
  OP=6'b000001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(15,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 16
  OP=6'b000001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(16,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 17
  OP=6'b000010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(17,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 18
  OP=6'b000010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(18,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 19
  OP=6'b000010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(19,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 20
  OP=6'b000010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(20,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 21
  OP=6'b000010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(21,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 22
  OP=6'b000010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(22,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 23
  OP=6'b000010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(23,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 24
  OP=6'b000010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(24,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 25
  OP=6'b000011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(25,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 26
  OP=6'b000011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(26,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 27
  OP=6'b000011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(27,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 28
  OP=6'b000011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(28,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 29
  OP=6'b000011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(29,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 30
  OP=6'b000011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(30,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 31
  OP=6'b000011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(31,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 32
  OP=6'b000011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(32,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 33
  OP=6'b000100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(33,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 34
  OP=6'b000100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(34,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 35
  OP=6'b000100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(35,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 36
  OP=6'b000100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(36,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 37
  OP=6'b000100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(37,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 38
  OP=6'b000100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(38,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 39
  OP=6'b000100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(39,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 40
  OP=6'b000100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(40,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 41
  OP=6'b000101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(41,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 42
  OP=6'b000101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(42,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 43
  OP=6'b000101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(43,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 44
  OP=6'b000101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(44,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 45
  OP=6'b000101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(45,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 46
  OP=6'b000101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(46,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 47
  OP=6'b000101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(47,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 48
  OP=6'b000101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(48,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 49
  OP=6'b000110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(49,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 50
  OP=6'b000110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(50,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 51
  OP=6'b000110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(51,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 52
  OP=6'b000110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(52,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 53
  OP=6'b000110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(53,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 54
  OP=6'b000110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(54,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 55
  OP=6'b000110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(55,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 56
  OP=6'b000110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(56,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 57
  OP=6'b000111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(57,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 58
  OP=6'b000111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(58,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 59
  OP=6'b000111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(59,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 60
  OP=6'b000111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(60,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 61
  OP=6'b000111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(61,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 62
  OP=6'b000111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(62,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 63
  OP=6'b000111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(63,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 64
  OP=6'b000111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(64,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 65
  OP=6'b001000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(65,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 66
  OP=6'b001000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(66,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 67
  OP=6'b001000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(67,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 68
  OP=6'b001000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(68,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 69
  OP=6'b001000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(69,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 70
  OP=6'b001000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(70,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 71
  OP=6'b001000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(71,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 72
  OP=6'b001000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(72,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 73
  OP=6'b001001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(73,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 74
  OP=6'b001001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(74,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 75
  OP=6'b001001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(75,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 76
  OP=6'b001001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(76,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 77
  OP=6'b001001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(77,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 78
  OP=6'b001001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(78,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 79
  OP=6'b001001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(79,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 80
  OP=6'b001001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(80,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 81
  OP=6'b001010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(81,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 82
  OP=6'b001010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(82,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 83
  OP=6'b001010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(83,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 84
  OP=6'b001010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(84,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 85
  OP=6'b001010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(85,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 86
  OP=6'b001010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(86,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 87
  OP=6'b001010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(87,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 88
  OP=6'b001010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(88,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 89
  OP=6'b001011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(89,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 90
  OP=6'b001011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(90,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 91
  OP=6'b001011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(91,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 92
  OP=6'b001011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(92,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 93
  OP=6'b001011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(93,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 94
  OP=6'b001011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(94,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 95
  OP=6'b001011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(95,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 96
  OP=6'b001011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(96,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 97
  OP=6'b001100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(97,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 98
  OP=6'b001100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(98,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 99
  OP=6'b001100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(99,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 100
  OP=6'b001100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(100,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 101
  OP=6'b001100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(101,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 102
  OP=6'b001100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(102,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 103
  OP=6'b001100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(103,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 104
  OP=6'b001100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(104,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 105
  OP=6'b001101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(105,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 106
  OP=6'b001101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(106,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 107
  OP=6'b001101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(107,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 108
  OP=6'b001101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(108,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 109
  OP=6'b001101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(109,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 110
  OP=6'b001101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(110,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 111
  OP=6'b001101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(111,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 112
  OP=6'b001101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(112,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 113
  OP=6'b001110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(113,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 114
  OP=6'b001110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(114,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 115
  OP=6'b001110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(115,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 116
  OP=6'b001110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(116,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 117
  OP=6'b001110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(117,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 118
  OP=6'b001110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(118,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 119
  OP=6'b001110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(119,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 120
  OP=6'b001110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(120,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 121
  OP=6'b001111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(121,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 122
  OP=6'b001111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(122,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 123
  OP=6'b001111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(123,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 124
  OP=6'b001111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(124,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 125
  OP=6'b001111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(125,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 126
  OP=6'b001111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(126,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 127
  OP=6'b001111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(127,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 128
  OP=6'b001111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(128,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 129
  OP=6'b010000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(129,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 130
  OP=6'b010000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(130,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 131
  OP=6'b010000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(131,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 132
  OP=6'b010000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(132,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 133
  OP=6'b010000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(133,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 134
  OP=6'b010000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(134,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 135
  OP=6'b010000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(135,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 136
  OP=6'b010000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(136,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 137
  OP=6'b010001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(137,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 138
  OP=6'b010001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(138,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 139
  OP=6'b010001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(139,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 140
  OP=6'b010001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(140,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 141
  OP=6'b010001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(141,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 142
  OP=6'b010001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(142,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 143
  OP=6'b010001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(143,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 144
  OP=6'b010001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(144,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 145
  OP=6'b010010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(145,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 146
  OP=6'b010010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(146,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 147
  OP=6'b010010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(147,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 148
  OP=6'b010010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(148,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 149
  OP=6'b010010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(149,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 150
  OP=6'b010010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(150,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 151
  OP=6'b010010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(151,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 152
  OP=6'b010010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(152,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 153
  OP=6'b010011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(153,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 154
  OP=6'b010011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(154,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 155
  OP=6'b010011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(155,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 156
  OP=6'b010011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(156,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 157
  OP=6'b010011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(157,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 158
  OP=6'b010011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(158,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 159
  OP=6'b010011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(159,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 160
  OP=6'b010011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(160,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 161
  OP=6'b010100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(161,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 162
  OP=6'b010100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(162,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 163
  OP=6'b010100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(163,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 164
  OP=6'b010100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(164,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 165
  OP=6'b010100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(165,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 166
  OP=6'b010100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(166,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 167
  OP=6'b010100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(167,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 168
  OP=6'b010100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(168,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 169
  OP=6'b010101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(169,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 170
  OP=6'b010101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(170,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 171
  OP=6'b010101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(171,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 172
  OP=6'b010101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(172,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 173
  OP=6'b010101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(173,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 174
  OP=6'b010101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(174,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 175
  OP=6'b010101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(175,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 176
  OP=6'b010101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(176,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 177
  OP=6'b010110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(177,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 178
  OP=6'b010110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(178,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 179
  OP=6'b010110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(179,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 180
  OP=6'b010110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(180,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 181
  OP=6'b010110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(181,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 182
  OP=6'b010110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(182,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 183
  OP=6'b010110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(183,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 184
  OP=6'b010110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(184,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 185
  OP=6'b010111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(185,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 186
  OP=6'b010111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(186,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 187
  OP=6'b010111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(187,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 188
  OP=6'b010111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(188,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 189
  OP=6'b010111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(189,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 190
  OP=6'b010111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(190,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 191
  OP=6'b010111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(191,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 192
  OP=6'b010111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(192,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 193
  OP=6'b011000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(193,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b1,MOE,1'b1,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b10,WERF,1'b1);
  #10;

  //CASE: 194
  OP=6'b011000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(194,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b1,MOE,1'b1,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b10,WERF,1'b1);
  #10;

  //CASE: 195
  OP=6'b011000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(195,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 196
  OP=6'b011000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(196,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 197
  OP=6'b011000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(197,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 198
  OP=6'b011000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(198,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 199
  OP=6'b011000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(199,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 200
  OP=6'b011000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(200,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 201
  OP=6'b011001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(201,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b1,MOE,1'b0,MWR,1'b1,PCSEL,3'b000,RA2SEL,1'b1,WASEL,1'bx,WDSEL,2'bxx,WERF,1'b0);
  #10;

  //CASE: 202
  OP=6'b011001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(202,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b1,MOE,1'b0,MWR,1'b1,PCSEL,3'b000,RA2SEL,1'b1,WASEL,1'bx,WDSEL,2'bxx,WERF,1'b0);
  #10;

  //CASE: 203
  OP=6'b011001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(203,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 204
  OP=6'b011001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(204,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 205
  OP=6'b011001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(205,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 206
  OP=6'b011001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(206,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 207
  OP=6'b011001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(207,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 208
  OP=6'b011001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(208,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 209
  OP=6'b011010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(209,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 210
  OP=6'b011010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(210,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 211
  OP=6'b011010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(211,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 212
  OP=6'b011010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(212,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 213
  OP=6'b011010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(213,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 214
  OP=6'b011010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(214,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 215
  OP=6'b011010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(215,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 216
  OP=6'b011010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(216,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 217
  OP=6'b011011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(217,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b010,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 218
  OP=6'b011011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(218,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b010,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 219
  OP=6'b011011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(219,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 220
  OP=6'b011011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(220,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 221
  OP=6'b011011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(221,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 222
  OP=6'b011011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(222,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 223
  OP=6'b011011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(223,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 224
  OP=6'b011011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(224,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 225
  OP=6'b011100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(225,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 226
  OP=6'b011100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(226,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b001,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 227
  OP=6'b011100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(227,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 228
  OP=6'b011100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(228,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 229
  OP=6'b011100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(229,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 230
  OP=6'b011100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(230,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 231
  OP=6'b011100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(231,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 232
  OP=6'b011100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(232,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 233
  OP=6'b011101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(233,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b001,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 234
  OP=6'b011101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(234,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 235
  OP=6'b011101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(235,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 236
  OP=6'b011101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(236,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 237
  OP=6'b011101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(237,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 238
  OP=6'b011101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(238,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 239
  OP=6'b011101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(239,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 240
  OP=6'b011101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(240,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 241
  OP=6'b011110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(241,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 242
  OP=6'b011110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(242,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 243
  OP=6'b011110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(243,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 244
  OP=6'b011110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(244,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 245
  OP=6'b011110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(245,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 246
  OP=6'b011110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(246,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 247
  OP=6'b011110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(247,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 248
  OP=6'b011110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(248,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 249
  OP=6'b011111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(249,ALUFN,6'b101010,ASEL,1'b1,BSEL,1'bx,MOE,1'b1,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b10,WERF,1'b1);
  #10;

  //CASE: 250
  OP=6'b011111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(250,ALUFN,6'b101010,ASEL,1'b1,BSEL,1'bx,MOE,1'b1,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b10,WERF,1'b1);
  #10;

  //CASE: 251
  OP=6'b011111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(251,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 252
  OP=6'b011111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(252,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 253
  OP=6'b011111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(253,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 254
  OP=6'b011111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(254,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 255
  OP=6'b011111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(255,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 256
  OP=6'b011111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(256,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 257
  OP=6'b100000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(257,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 258
  OP=6'b100000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(258,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 259
  OP=6'b100000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(259,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 260
  OP=6'b100000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(260,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 261
  OP=6'b100000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(261,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 262
  OP=6'b100000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(262,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 263
  OP=6'b100000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(263,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 264
  OP=6'b100000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(264,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 265
  OP=6'b100001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(265,ALUFN,6'b010001,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 266
  OP=6'b100001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(266,ALUFN,6'b010001,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 267
  OP=6'b100001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(267,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 268
  OP=6'b100001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(268,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 269
  OP=6'b100001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(269,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 270
  OP=6'b100001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(270,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 271
  OP=6'b100001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(271,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 272
  OP=6'b100001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(272,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 273
  OP=6'b100010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(273,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 274
  OP=6'b100010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(274,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 275
  OP=6'b100010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(275,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 276
  OP=6'b100010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(276,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 277
  OP=6'b100010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(277,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 278
  OP=6'b100010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(278,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 279
  OP=6'b100010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(279,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 280
  OP=6'b100010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(280,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 281
  OP=6'b100011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(281,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 282
  OP=6'b100011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(282,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 283
  OP=6'b100011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(283,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 284
  OP=6'b100011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(284,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 285
  OP=6'b100011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(285,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 286
  OP=6'b100011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(286,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 287
  OP=6'b100011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(287,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 288
  OP=6'b100011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(288,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 289
  OP=6'b100100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(289,ALUFN,6'b000011,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 290
  OP=6'b100100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(290,ALUFN,6'b000011,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 291
  OP=6'b100100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(291,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 292
  OP=6'b100100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(292,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 293
  OP=6'b100100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(293,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 294
  OP=6'b100100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(294,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 295
  OP=6'b100100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(295,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 296
  OP=6'b100100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(296,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 297
  OP=6'b100101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(297,ALUFN,6'b000101,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 298
  OP=6'b100101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(298,ALUFN,6'b000101,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 299
  OP=6'b100101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(299,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 300
  OP=6'b100101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(300,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 301
  OP=6'b100101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(301,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 302
  OP=6'b100101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(302,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 303
  OP=6'b100101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(303,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 304
  OP=6'b100101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(304,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 305
  OP=6'b100110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(305,ALUFN,6'b000111,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 306
  OP=6'b100110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(306,ALUFN,6'b000111,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 307
  OP=6'b100110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(307,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 308
  OP=6'b100110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(308,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 309
  OP=6'b100110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(309,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 310
  OP=6'b100110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(310,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 311
  OP=6'b100110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(311,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 312
  OP=6'b100110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(312,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 313
  OP=6'b100111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(313,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 314
  OP=6'b100111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(314,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 315
  OP=6'b100111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(315,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 316
  OP=6'b100111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(316,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 317
  OP=6'b100111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(317,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 318
  OP=6'b100111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(318,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 319
  OP=6'b100111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(319,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 320
  OP=6'b100111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(320,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 321
  OP=6'b101000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(321,ALUFN,6'b101000,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 322
  OP=6'b101000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(322,ALUFN,6'b101000,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 323
  OP=6'b101000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(323,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 324
  OP=6'b101000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(324,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 325
  OP=6'b101000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(325,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 326
  OP=6'b101000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(326,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 327
  OP=6'b101000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(327,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 328
  OP=6'b101000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(328,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 329
  OP=6'b101001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(329,ALUFN,6'b101110,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 330
  OP=6'b101001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(330,ALUFN,6'b101110,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 331
  OP=6'b101001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(331,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 332
  OP=6'b101001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(332,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 333
  OP=6'b101001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(333,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 334
  OP=6'b101001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(334,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 335
  OP=6'b101001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(335,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 336
  OP=6'b101001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(336,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 337
  OP=6'b101010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(337,ALUFN,6'b100110,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 338
  OP=6'b101010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(338,ALUFN,6'b100110,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 339
  OP=6'b101010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(339,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 340
  OP=6'b101010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(340,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 341
  OP=6'b101010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(341,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 342
  OP=6'b101010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(342,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 343
  OP=6'b101010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(343,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 344
  OP=6'b101010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(344,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 345
  OP=6'b101011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(345,ALUFN,6'b101001,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 346
  OP=6'b101011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(346,ALUFN,6'b101001,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 347
  OP=6'b101011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(347,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 348
  OP=6'b101011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(348,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 349
  OP=6'b101011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(349,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 350
  OP=6'b101011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(350,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 351
  OP=6'b101011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(351,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 352
  OP=6'b101011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(352,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 353
  OP=6'b101100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(353,ALUFN,6'b110000,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 354
  OP=6'b101100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(354,ALUFN,6'b110000,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 355
  OP=6'b101100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(355,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 356
  OP=6'b101100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(356,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 357
  OP=6'b101100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(357,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 358
  OP=6'b101100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(358,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 359
  OP=6'b101100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(359,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 360
  OP=6'b101100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(360,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 361
  OP=6'b101101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(361,ALUFN,6'b110001,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 362
  OP=6'b101101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(362,ALUFN,6'b110001,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 363
  OP=6'b101101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(363,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 364
  OP=6'b101101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(364,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 365
  OP=6'b101101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(365,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 366
  OP=6'b101101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(366,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 367
  OP=6'b101101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(367,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 368
  OP=6'b101101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(368,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 369
  OP=6'b101110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(369,ALUFN,6'b110011,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 370
  OP=6'b101110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(370,ALUFN,6'b110011,ASEL,1'b0,BSEL,1'b0,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'b0,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 371
  OP=6'b101110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(371,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 372
  OP=6'b101110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(372,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 373
  OP=6'b101110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(373,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 374
  OP=6'b101110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(374,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 375
  OP=6'b101110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(375,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 376
  OP=6'b101110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(376,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 377
  OP=6'b101111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(377,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 378
  OP=6'b101111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(378,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 379
  OP=6'b101111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(379,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 380
  OP=6'b101111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(380,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 381
  OP=6'b101111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(381,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 382
  OP=6'b101111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(382,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 383
  OP=6'b101111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(383,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 384
  OP=6'b101111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(384,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 385
  OP=6'b110000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(385,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 386
  OP=6'b110000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(386,ALUFN,6'b010000,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 387
  OP=6'b110000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(387,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 388
  OP=6'b110000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(388,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 389
  OP=6'b110000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(389,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 390
  OP=6'b110000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(390,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 391
  OP=6'b110000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(391,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 392
  OP=6'b110000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(392,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 393
  OP=6'b110001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(393,ALUFN,6'b010001,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 394
  OP=6'b110001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(394,ALUFN,6'b010001,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 395
  OP=6'b110001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(395,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 396
  OP=6'b110001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(396,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 397
  OP=6'b110001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(397,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 398
  OP=6'b110001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(398,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 399
  OP=6'b110001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(399,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 400
  OP=6'b110001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(400,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 401
  OP=6'b110010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(401,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 402
  OP=6'b110010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(402,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 403
  OP=6'b110010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(403,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 404
  OP=6'b110010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(404,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 405
  OP=6'b110010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(405,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 406
  OP=6'b110010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(406,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 407
  OP=6'b110010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(407,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 408
  OP=6'b110010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(408,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 409
  OP=6'b110011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(409,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 410
  OP=6'b110011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(410,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 411
  OP=6'b110011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(411,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 412
  OP=6'b110011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(412,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 413
  OP=6'b110011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(413,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 414
  OP=6'b110011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(414,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 415
  OP=6'b110011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(415,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 416
  OP=6'b110011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(416,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 417
  OP=6'b110100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(417,ALUFN,6'b000011,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 418
  OP=6'b110100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(418,ALUFN,6'b000011,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 419
  OP=6'b110100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(419,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 420
  OP=6'b110100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(420,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 421
  OP=6'b110100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(421,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 422
  OP=6'b110100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(422,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 423
  OP=6'b110100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(423,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 424
  OP=6'b110100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(424,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 425
  OP=6'b110101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(425,ALUFN,6'b000101,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 426
  OP=6'b110101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(426,ALUFN,6'b000101,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 427
  OP=6'b110101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(427,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 428
  OP=6'b110101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(428,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 429
  OP=6'b110101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(429,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 430
  OP=6'b110101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(430,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 431
  OP=6'b110101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(431,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 432
  OP=6'b110101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(432,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 433
  OP=6'b110110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(433,ALUFN,6'b000111,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 434
  OP=6'b110110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(434,ALUFN,6'b000111,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 435
  OP=6'b110110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(435,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 436
  OP=6'b110110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(436,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 437
  OP=6'b110110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(437,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 438
  OP=6'b110110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(438,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 439
  OP=6'b110110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(439,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 440
  OP=6'b110110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(440,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 441
  OP=6'b110111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(441,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 442
  OP=6'b110111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(442,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 443
  OP=6'b110111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(443,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 444
  OP=6'b110111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(444,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 445
  OP=6'b110111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(445,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 446
  OP=6'b110111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(446,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 447
  OP=6'b110111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(447,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 448
  OP=6'b110111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(448,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 449
  OP=6'b111000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(449,ALUFN,6'b101000,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 450
  OP=6'b111000;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(450,ALUFN,6'b101000,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 451
  OP=6'b111000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(451,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 452
  OP=6'b111000;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(452,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 453
  OP=6'b111000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(453,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 454
  OP=6'b111000;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(454,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 455
  OP=6'b111000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(455,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 456
  OP=6'b111000;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(456,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 457
  OP=6'b111001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(457,ALUFN,6'b101110,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 458
  OP=6'b111001;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(458,ALUFN,6'b101110,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 459
  OP=6'b111001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(459,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 460
  OP=6'b111001;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(460,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 461
  OP=6'b111001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(461,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 462
  OP=6'b111001;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(462,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 463
  OP=6'b111001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(463,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 464
  OP=6'b111001;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(464,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 465
  OP=6'b111010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(465,ALUFN,6'b100110,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 466
  OP=6'b111010;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(466,ALUFN,6'b100110,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 467
  OP=6'b111010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(467,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 468
  OP=6'b111010;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(468,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 469
  OP=6'b111010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(469,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 470
  OP=6'b111010;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(470,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 471
  OP=6'b111010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(471,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 472
  OP=6'b111010;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(472,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 473
  OP=6'b111011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(473,ALUFN,6'b101001,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 474
  OP=6'b111011;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(474,ALUFN,6'b101001,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 475
  OP=6'b111011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(475,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 476
  OP=6'b111011;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(476,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 477
  OP=6'b111011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(477,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 478
  OP=6'b111011;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(478,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 479
  OP=6'b111011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(479,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 480
  OP=6'b111011;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(480,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 481
  OP=6'b111100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(481,ALUFN,6'b110000,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 482
  OP=6'b111100;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(482,ALUFN,6'b110000,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 483
  OP=6'b111100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(483,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 484
  OP=6'b111100;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(484,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 485
  OP=6'b111100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(485,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 486
  OP=6'b111100;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(486,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 487
  OP=6'b111100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(487,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 488
  OP=6'b111100;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(488,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 489
  OP=6'b111101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(489,ALUFN,6'b110001,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 490
  OP=6'b111101;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(490,ALUFN,6'b110001,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 491
  OP=6'b111101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(491,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 492
  OP=6'b111101;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(492,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 493
  OP=6'b111101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(493,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 494
  OP=6'b111101;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(494,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 495
  OP=6'b111101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(495,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 496
  OP=6'b111101;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(496,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 497
  OP=6'b111110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(497,ALUFN,6'b110011,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 498
  OP=6'b111110;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(498,ALUFN,6'b110011,ASEL,1'b0,BSEL,1'b1,MOE,1'bx,MWR,1'b0,PCSEL,3'b000,RA2SEL,1'bx,WASEL,1'b0,WDSEL,2'b01,WERF,1'b1);
  #10;

  //CASE: 499
  OP=6'b111110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(499,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 500
  OP=6'b111110;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(500,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 501
  OP=6'b111110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(501,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 502
  OP=6'b111110;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(502,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 503
  OP=6'b111110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(503,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 504
  OP=6'b111110;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(504,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 505
  OP=6'b111111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(505,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 506
  OP=6'b111111;
  RESET=1'b0;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(506,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b011,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 507
  OP=6'b111111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(507,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 508
  OP=6'b111111;
  RESET=1'b0;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(508,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'b100,RA2SEL,1'bx,WASEL,1'b1,WDSEL,2'b00,WERF,1'b1);
  #10;

  //CASE: 509
  OP=6'b111111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(509,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 510
  OP=6'b111111;
  RESET=1'b1;
  IRQ=1'b0;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(510,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 511
  OP=6'b111111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(511,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;

  //CASE: 512
  OP=6'b111111;
  RESET=1'b1;
  IRQ=1'b1;
  Z=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(512,ALUFN,6'bxxxxxx,ASEL,1'bx,BSEL,1'bx,MOE,1'bx,MWR,1'b0,PCSEL,3'bxxx,RA2SEL,1'bx,WASEL,1'bx,WDSEL,2'bxx,WERF,1'bx);
  #10;


  if(weAreOk) $display("TEST OK\n\nPassed");


  end

endmodule