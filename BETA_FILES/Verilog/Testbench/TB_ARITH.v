`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abdelrahman Elbehery
//
// Create Date:   00:26:11 02/10/2017
// Design Name:   ARITH
// Module Name:   F:/Self learning/FPGA/Projects/BETA_ISE/TB_ARITH.v
// Project Name:  BETA_ISE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ARITH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_ARITH;

  reg CLK=0;
  integer weAreOk=1;

  task PRINT;
    input integer CN;
    input [31:0] S;
    input [31:0] ExS;
  input Z;
  input ExZ;
  input V;
  input ExV;
  input N;
  input ExN;
    if( S!=ExS | Z!=ExZ | V!=ExV | N!=ExN ) begin
    $display("Error in case: %d\nS: %b\nExpected: %b\nZ: %b\nExpected: %b\nV: %b\nExpected: %b\nN: %b\nExpected: %b\n",CN,S,ExS,Z,ExZ,V,ExV,N,ExN);
    weAreOk=0;
    end
  endtask

  reg  AFN;
  reg [31:0] A;
  reg [31:0] B;
  wire [31:0] S;
  wire  Z;
  wire  V;
  wire  N;

  ARITH uut(.AFN(AFN),.A(A),.B(B),.S(S),.Z(Z),.V(V),.N(N));



initial begin
  //CASE: 1
  AFN=1'b0;
  A=32'b00000000000000000000000000000000;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(1,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 2
  AFN=1'b0;
  A=32'b00000000000000000000000000000000;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(2,S,32'b00000000000000000000000000000001,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 3
  AFN=1'b0;
  A=32'b00000000000000000000000000000000;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(3,S,32'b11111111111111111111111111111111,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 4
  AFN=1'b0;
  A=32'b00000000000000000000000000000000;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(4,S,32'b10101010101010101010101010101010,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 5
  AFN=1'b0;
  A=32'b00000000000000000000000000000000;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(5,S,32'b01010101010101010101010101010101,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 6
  AFN=1'b0;
  A=32'b00000000000000000000000000000001;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(6,S,32'b00000000000000000000000000000001,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 7
  AFN=1'b0;
  A=32'b00000000000000000000000000000001;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(7,S,32'b00000000000000000000000000000010,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 8
  AFN=1'b0;
  A=32'b00000000000000000000000000000001;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(8,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 9
  AFN=1'b0;
  A=32'b00000000000000000000000000000001;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(9,S,32'b10101010101010101010101010101011,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 10
  AFN=1'b0;
  A=32'b00000000000000000000000000000001;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(10,S,32'b01010101010101010101010101010110,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 11
  AFN=1'b0;
  A=32'b11111111111111111111111111111111;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(11,S,32'b11111111111111111111111111111111,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 12
  AFN=1'b0;
  A=32'b11111111111111111111111111111111;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(12,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 13
  AFN=1'b0;
  A=32'b11111111111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(13,S,32'b11111111111111111111111111111110,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 14
  AFN=1'b0;
  A=32'b11111111111111111111111111111111;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(14,S,32'b10101010101010101010101010101001,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 15
  AFN=1'b0;
  A=32'b11111111111111111111111111111111;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(15,S,32'b01010101010101010101010101010100,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 16
  AFN=1'b0;
  A=32'b10101010101010101010101010101010;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(16,S,32'b10101010101010101010101010101010,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 17
  AFN=1'b0;
  A=32'b10101010101010101010101010101010;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(17,S,32'b10101010101010101010101010101011,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 18
  AFN=1'b0;
  A=32'b10101010101010101010101010101010;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(18,S,32'b10101010101010101010101010101001,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 19
  AFN=1'b0;
  A=32'b10101010101010101010101010101010;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(19,S,32'b01010101010101010101010101010100,Z,1'b0,V,1'b1,N,1'b0);
  #10;

  //CASE: 20
  AFN=1'b0;
  A=32'b10101010101010101010101010101010;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(20,S,32'b11111111111111111111111111111111,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 21
  AFN=1'b0;
  A=32'b01010101010101010101010101010101;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(21,S,32'b01010101010101010101010101010101,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 22
  AFN=1'b0;
  A=32'b01010101010101010101010101010101;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(22,S,32'b01010101010101010101010101010110,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 23
  AFN=1'b0;
  A=32'b01010101010101010101010101010101;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(23,S,32'b01010101010101010101010101010100,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 24
  AFN=1'b0;
  A=32'b01010101010101010101010101010101;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(24,S,32'b11111111111111111111111111111111,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 25
  AFN=1'b0;
  A=32'b01010101010101010101010101010101;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(25,S,32'b10101010101010101010101010101010,Z,1'b0,V,1'b1,N,1'b1);
  #10;

  //CASE: 26
  AFN=1'b1;
  A=32'b00000000000000000000000000000000;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(26,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 27
  AFN=1'b1;
  A=32'b00000000000000000000000000000000;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(27,S,32'b11111111111111111111111111111111,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 28
  AFN=1'b1;
  A=32'b00000000000000000000000000000000;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(28,S,32'b00000000000000000000000000000001,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 29
  AFN=1'b1;
  A=32'b00000000000000000000000000000000;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(29,S,32'b01010101010101010101010101010110,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 30
  AFN=1'b1;
  A=32'b00000000000000000000000000000000;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(30,S,32'b10101010101010101010101010101011,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 31
  AFN=1'b1;
  A=32'b00000000000000000000000000000001;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(31,S,32'b00000000000000000000000000000001,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 32
  AFN=1'b1;
  A=32'b00000000000000000000000000000001;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(32,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 33
  AFN=1'b1;
  A=32'b00000000000000000000000000000001;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(33,S,32'b00000000000000000000000000000010,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 34
  AFN=1'b1;
  A=32'b00000000000000000000000000000001;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(34,S,32'b01010101010101010101010101010111,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 35
  AFN=1'b1;
  A=32'b00000000000000000000000000000001;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(35,S,32'b10101010101010101010101010101100,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 36
  AFN=1'b1;
  A=32'b11111111111111111111111111111111;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(36,S,32'b11111111111111111111111111111111,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 37
  AFN=1'b1;
  A=32'b11111111111111111111111111111111;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(37,S,32'b11111111111111111111111111111110,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 38
  AFN=1'b1;
  A=32'b11111111111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(38,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 39
  AFN=1'b1;
  A=32'b11111111111111111111111111111111;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(39,S,32'b01010101010101010101010101010101,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 40
  AFN=1'b1;
  A=32'b11111111111111111111111111111111;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(40,S,32'b10101010101010101010101010101010,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 41
  AFN=1'b1;
  A=32'b10101010101010101010101010101010;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(41,S,32'b10101010101010101010101010101010,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 42
  AFN=1'b1;
  A=32'b10101010101010101010101010101010;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(42,S,32'b10101010101010101010101010101001,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 43
  AFN=1'b1;
  A=32'b10101010101010101010101010101010;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(43,S,32'b10101010101010101010101010101011,Z,1'b0,V,1'b0,N,1'b1);
  #10;

  //CASE: 44
  AFN=1'b1;
  A=32'b10101010101010101010101010101010;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(44,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 45
  AFN=1'b1;
  A=32'b10101010101010101010101010101010;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(45,S,32'b01010101010101010101010101010101,Z,1'b0,V,1'b1,N,1'b0);
  #10;

  //CASE: 46
  AFN=1'b1;
  A=32'b01010101010101010101010101010101;
  B=32'b00000000000000000000000000000000;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(46,S,32'b01010101010101010101010101010101,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 47
  AFN=1'b1;
  A=32'b01010101010101010101010101010101;
  B=32'b00000000000000000000000000000001;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(47,S,32'b01010101010101010101010101010100,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 48
  AFN=1'b1;
  A=32'b01010101010101010101010101010101;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(48,S,32'b01010101010101010101010101010110,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 49
  AFN=1'b1;
  A=32'b01010101010101010101010101010101;
  B=32'b10101010101010101010101010101010;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(49,S,32'b10101010101010101010101010101011,Z,1'b0,V,1'b1,N,1'b1);
  #10;

  //CASE: 50
  AFN=1'b1;
  A=32'b01010101010101010101010101010101;
  B=32'b01010101010101010101010101010101;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(50,S,32'b00000000000000000000000000000000,Z,1'b1,V,1'b0,N,1'b0);
  #10;

  //CASE: 51
  AFN=1'b1;
  A=32'b01111111111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(51,S,32'b10000000000000000000000000000000,Z,1'b0,V,1'b1,N,1'b1);
  #10;

  //CASE: 52
  AFN=1'b1;
  A=32'b00111111111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(52,S,32'b01000000000000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 53
  AFN=1'b1;
  A=32'b00011111111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(53,S,32'b00100000000000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 54
  AFN=1'b1;
  A=32'b00001111111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(54,S,32'b00010000000000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 55
  AFN=1'b1;
  A=32'b00000111111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(55,S,32'b00001000000000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 56
  AFN=1'b1;
  A=32'b00000011111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(56,S,32'b00000100000000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 57
  AFN=1'b1;
  A=32'b00000001111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(57,S,32'b00000010000000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 58
  AFN=1'b1;
  A=32'b00000000111111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(58,S,32'b00000001000000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 59
  AFN=1'b1;
  A=32'b00000000011111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(59,S,32'b00000000100000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 60
  AFN=1'b1;
  A=32'b00000000001111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(60,S,32'b00000000010000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 61
  AFN=1'b1;
  A=32'b00000000000111111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(61,S,32'b00000000001000000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 62
  AFN=1'b1;
  A=32'b00000000000011111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(62,S,32'b00000000000100000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 63
  AFN=1'b1;
  A=32'b00000000000001111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(63,S,32'b00000000000010000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 64
  AFN=1'b1;
  A=32'b00000000000000111111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(64,S,32'b00000000000001000000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 65
  AFN=1'b1;
  A=32'b00000000000000011111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(65,S,32'b00000000000000100000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 66
  AFN=1'b1;
  A=32'b00000000000000001111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(66,S,32'b00000000000000010000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 67
  AFN=1'b1;
  A=32'b00000000000000000111111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(67,S,32'b00000000000000001000000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 68
  AFN=1'b1;
  A=32'b00000000000000000011111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(68,S,32'b00000000000000000100000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 69
  AFN=1'b1;
  A=32'b00000000000000000001111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(69,S,32'b00000000000000000010000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 70
  AFN=1'b1;
  A=32'b00000000000000000000111111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(70,S,32'b00000000000000000001000000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 71
  AFN=1'b1;
  A=32'b00000000000000000000011111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(71,S,32'b00000000000000000000100000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 72
  AFN=1'b1;
  A=32'b00000000000000000000001111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(72,S,32'b00000000000000000000010000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 73
  AFN=1'b1;
  A=32'b00000000000000000000000111111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(73,S,32'b00000000000000000000001000000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 74
  AFN=1'b1;
  A=32'b00000000000000000000000011111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(74,S,32'b00000000000000000000000100000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 75
  AFN=1'b1;
  A=32'b00000000000000000000000001111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(75,S,32'b00000000000000000000000010000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 76
  AFN=1'b1;
  A=32'b00000000000000000000000000111111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(76,S,32'b00000000000000000000000001000000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 77
  AFN=1'b1;
  A=32'b00000000000000000000000000011111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(77,S,32'b00000000000000000000000000100000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 78
  AFN=1'b1;
  A=32'b00000000000000000000000000001111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(78,S,32'b00000000000000000000000000010000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 79
  AFN=1'b1;
  A=32'b00000000000000000000000000000111;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(79,S,32'b00000000000000000000000000001000,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 80
  AFN=1'b1;
  A=32'b00000000000000000000000000000011;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(80,S,32'b00000000000000000000000000000100,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 81
  AFN=1'b1;
  A=32'b00000000000000000000000000000001;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(81,S,32'b00000000000000000000000000000010,Z,1'b0,V,1'b0,N,1'b0);
  #10;

  //CASE: 82
  AFN=1'b1;
  A=32'b00000000000000000000000000000000;
  B=32'b11111111111111111111111111111111;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(82,S,32'b00000000000000000000000000000001,Z,1'b0,V,1'b0,N,1'b0);
  #10;


  if(weAreOk) $display("TEST OK\n\nPassed");


  end
endmodule