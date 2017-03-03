`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abdelrahman Elbehery
//
// Create Date:   00:34:58 02/10/2017
// Design Name:   CMP
// Module Name:   F:/Self learning/FPGA/Projects/BETA_ISE/TB_CMP.v
// Project Name:  BETA_ISE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CMP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_CMP;
  reg CLK=0;
  integer weAreOk=1;

  task PRINT;
    input integer CN;
    input [31:0] Y;
    input [31:0] ExY;
    if( Y!=ExY ) begin
    $display("Error in case: %d\nY: %b\nExpected: %b\n",CN,Y,ExY);
    weAreOk=0;
    end
  endtask

  reg [1:0] CFN;
  reg  Z;
  reg  V;
  reg  N;
  wire [31:0] Y;

  CMP uut(.CFN(CFN),.Z(Z),.V(V),.N(N),.Y(Y));



initial begin
  //CASE: 1
  CFN=2'b01;
  Z=1'b0;
  V=1'b0;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(1,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 2
  CFN=2'b10;
  Z=1'b0;
  V=1'b0;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(2,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 3
  CFN=2'b11;
  Z=1'b0;
  V=1'b0;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(3,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 4
  CFN=2'b01;
  Z=1'b0;
  V=1'b0;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(4,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 5
  CFN=2'b10;
  Z=1'b0;
  V=1'b0;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(5,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 6
  CFN=2'b11;
  Z=1'b0;
  V=1'b0;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(6,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 7
  CFN=2'b01;
  Z=1'b0;
  V=1'b1;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(7,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 8
  CFN=2'b10;
  Z=1'b0;
  V=1'b1;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(8,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 9
  CFN=2'b11;
  Z=1'b0;
  V=1'b1;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(9,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 10
  CFN=2'b01;
  Z=1'b0;
  V=1'b1;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(10,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 11
  CFN=2'b10;
  Z=1'b0;
  V=1'b1;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(11,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 12
  CFN=2'b11;
  Z=1'b0;
  V=1'b1;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(12,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 13
  CFN=2'b01;
  Z=1'b1;
  V=1'b0;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(13,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 14
  CFN=2'b10;
  Z=1'b1;
  V=1'b0;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(14,Y,32'b00000000000000000000000000000000);
  #10;

  //CASE: 15
  CFN=2'b11;
  Z=1'b1;
  V=1'b0;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(15,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 16
  CFN=2'b01;
  Z=1'b1;
  V=1'b0;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(16,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 17
  CFN=2'b10;
  Z=1'b1;
  V=1'b0;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(17,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 18
  CFN=2'b11;
  Z=1'b1;
  V=1'b0;
  N=1'b1;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(18,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 19
  CFN=2'b01;
  Z=1'b1;
  V=1'b1;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(19,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 20
  CFN=2'b10;
  Z=1'b1;
  V=1'b1;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(20,Y,32'b00000000000000000000000000000001);
  #10;

  //CASE: 21
  CFN=2'b11;
  Z=1'b1;
  V=1'b1;
  N=1'b0;
  #1;
  CLK=1;
  #10;
  CLK=0;
  PRINT(21,Y,32'b00000000000000000000000000000001);
  #10;


  if(weAreOk) $display("TEST OK\n\nPassed");


  end

endmodule

