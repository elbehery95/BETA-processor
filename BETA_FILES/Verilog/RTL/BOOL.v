`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:15:42 02/10/2017 
// Design Name: 
// Module Name:    BOOL 
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
module BOOL (
  input [31:0] A,
  input [31:0] B,
  input [3:0] BFN,
  output  [31:0] Y
  );

  genvar i;
  generate
    for(i=0;i<32;i=i+1)
      MUX4 m({B[i],A[i]},BFN,Y[i]);
  endgenerate
endmodule // BOOL

module MUX4 (
  input [1:0] SEL,
  input [3:0] DIN,
  output reg OUT
  );

  always @ ( * ) begin
    OUT<=DIN[SEL];
  end
endmodule // MUX4
