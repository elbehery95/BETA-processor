`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:59 02/10/2017 
// Design Name: 
// Module Name:    SHIFT 
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
module SHIFT (
  input [1:0] SFN,
  input signed [31:0] A,
  input [4:0] B,
  output reg [31:0] Y
  );

  always @ ( * ) begin
    case (SFN)
      2'b00: Y<=A<<B;
      2'b01: Y<=A>>B;
      2'b11: Y<=A>>>B;
      default: Y<=32'b0;
    endcase
  end
endmodule // SHIFT
