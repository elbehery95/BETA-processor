`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:32 02/10/2017 
// Design Name: 
// Module Name:    CMP 
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
module CMP (
  input [1:0] CFN,
  input Z,
  input V,
  input N,
  output reg [31:0] Y
  );

  always @ ( * ) begin
    case(CFN)
      2'b01: Y<={31'b0,Z};
      2'b10: Y<={31'b0,N^V};
      2'b11: Y<={31'b0,Z | (N^V)};
      default: Y<=0;
    endcase
  end
endmodule // CMP
