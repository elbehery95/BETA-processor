`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:07 02/10/2017 
// Design Name: 
// Module Name:    ARITH 
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
module ARITH (
  input signed [31:0] A,
  input signed [31:0] B,
  input AFN,
  output reg [31:0] S,
  output reg Z,V,N
  );

always @ ( * ) begin
  N<=S[31];

  if(A[31]==(B[31]^AFN) & S[31]!=A[31])
    V<=1;
  else
    V<=0;

  if(S==0)
    Z<=1;
  else
    Z<=0;

    if(AFN==0)
      S<=A+B;
    else
      S<=A-B;
end
endmodule // ARITH