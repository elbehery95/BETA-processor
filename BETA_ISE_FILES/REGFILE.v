`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:06:05 02/10/2017 
// Design Name: 
// Module Name:    REGFILE 
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
module REGFILE(
    input CLK,
    input RA2SEL,
    input WASEL,
    input WERF,
    input [4:0] RA,
    input [4:0] RB,
    input [4:0] RC,
    input [31:0] WDATA,
    output reg [31:0] RADATA,
    output reg [31:0] RBDATA
    );

reg [4:0] rc_i;
reg [4:0] rb_i;
wire [31:0] rd1_i;
wire [31:0] rd2_i;
//SRAM32x32 A (
//  .clka(CLK), // input clka
//  .wea(WERF), // input [0 : 0] wea
//  .addra(rc_i), // input [4 : 0] addra
//  .dina(WDATA), // input [31 : 0] dina
//  .clkb(CLK), // input clkb
//  .addrb(RA), // input [4 : 0] addrb
//  .doutb(rd1_i) // output [31 : 0] doutb
//);

DRAM32x32 A_DIST (
  .a(rc_i), // input [4 : 0] a
  .d(WDATA), // input [31 : 0] d
  .dpra(RA), // input [4 : 0] dpra
  .clk(CLK), // input clk
  .we(WERF), // input we
  .dpo(rd1_i) // output [31 : 0] dpo
);


//SRAM32x32 B (
//  .clka(CLK), // input clka
//  .wea(WERF), // input [0 : 0] wea
//  .addra(rc_i), // input [4 : 0] addra
//  .dina(WDATA), // input [31 : 0] dina
//  .clkb(CLK), // input clkb
//  .addrb(rb_i), // input [4 : 0] addrb
//  .doutb(rd2_i) // output [31 : 0] doutb
//);

DRAM32x32 B_DIST (
  .a(rc_i), // input [4 : 0] a
  .d(WDATA), // input [31 : 0] d
  .dpra(rb_i), // input [4 : 0] dpra
  .clk(CLK), // input clk
  .we(WERF), // input we
  .dpo(rd2_i) // output [31 : 0] dpo
);

always @ (*) begin
	case(WASEL)
		0:rc_i=RC;
		1:rc_i=30;
	endcase
	
	case(RA2SEL)
		0:rb_i=RB;
		1:rb_i=RC;
	endcase
	
	case(RA)
		31:RADATA=0;
		default: RADATA=rd1_i;
	endcase	
	
	case(rb_i)
		31:RBDATA=0;
		default: RBDATA=rd2_i;
	endcase		
end
endmodule
