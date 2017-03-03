`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:23 02/10/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU (
  input [31:0] A,
  input [31:0] B,
  input [5:0] FN,
  output reg [31:0] Y,
  output reg Z,V,N
  );

  //Local signals
  wire [31:0] shft_opt;
  wire [31:0] bool_opt;
  wire [31:0] arith_opt;
  wire [31:0] cmp_opt;
  wire z_i,v_i,n_i;

  //Local modules
  SHIFT shft_ckt(.SFN(FN[1:0]),.A(A),.B(B[4:0]),.Y(shft_opt));
  BOOL bool_ckt(.BFN(FN[3:0]),.A(A),.B(B),.Y(bool_opt));
  ARITH arith_ckt(.AFN(FN[0]),.A(A),.B(B),.S(arith_opt),.Z(z_i),.V(v_i),.N(n_i));
  CMP cmp_ckt(.CFN(FN[2:1]),.Z(z_i),.V(v_i),.N(n_i),.Y(cmp_opt));
  always @ ( * ) begin
    case(FN[5:4])
      2'b00: Y=cmp_opt;
      2'b01: Y=arith_opt;
      2'b10: Y=bool_opt;
      2'b11: Y=shft_opt;
    endcase
	 Z<=z_i;
	 V<=v_i;
	 N<=n_i;
  end
endmodule // ALU