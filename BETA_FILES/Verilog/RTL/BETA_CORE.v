`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:23:28 02/10/2017 
// Design Name: 
// Module Name:    BETA_CORE 
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
module BETA_CORE(
    input CLK,
    input RESET,
    input IRQ,
    input [31:0] MRD,
    input [31:0] ID,
    output [31:0] IA,
    output [31:0] MA,
    output MOE,
    output  MWR,
    output [31:0] MWD
    );

//internal wires and registers
reg irq_i;
reg z_i;
reg [31:0] regWriteData_i;
reg [31:0] aluA_i;
reg [31:0] aluB_i;

wire [31:0] radata_i;
wire asel_i;
wire bsel_i;
wire [5:0] alufn_i;
wire [2:0] pcsel_i;
wire ra2sel_i;
wire wasel_i;
wire [1:0] wdsel_i;
wire werf_i;
wire [31:0] pcInc_i;
wire [31:0] pcOffset_i;

CTL control_unit (
    .OP(ID[31:26]), 
    .RESET(RESET), 
    .IRQ(irq_i), 
    .Z(z_i), 
    .ALUFN(alufn_i), 
    .ASEL(asel_i), 
    .BSEL(bsel_i), 
    .MOE(MOE), 
    .MWR(MWR), 
    .PCSEL(pcsel_i), 
    .RA2SEL(ra2sel_i), 
    .WASEL(wasel_i), 
    .WDSEL(wdsel_i), 
    .WERF(werf_i)
    );

REGFILE rf (
    .CLK(CLK), 
    .RA2SEL(ra2sel_i), 
    .WASEL(wasel_i), 
    .WERF(werf_i), 
    .RA(ID[20:16]), 
    .RB(ID[15:11]), 
    .RC(ID[25:21]), 
    .WDATA(regWriteData_i), 
    .RADATA(radata_i), 
    .RBDATA(MWD)
    );
	 
PC prog_counter (
    .CLK(CLK), 
    .RESET(RESET), 
    .PCSEL(pcsel_i), 
    .ID(ID[15:0]), 
    .JT(radata_i), 
    .PC(IA), 
    .PC_INC(pcInc_i), 
    .PC_OFFSET(pcOffset_i)
    );
	 
ALU arithlog_unit (
    .A(aluA_i), 
    .B(aluB_i), 
    .FN(alufn_i), 
    .Y(MA)
    );

//main code body
always @(*) begin
	irq_i=~IA[31] & IRQ;
	
	if(radata_i==0)
		z_i=1;
	else
		z_i=0;  //YALAHWYYYYYYYY
	
	case(wdsel_i)
		0: regWriteData_i=pcInc_i;
		1: regWriteData_i=MA;
		2: regWriteData_i=MRD;
		default: regWriteData_i=0;
	endcase
	
	case(asel_i)
		0: aluA_i=radata_i;
		1: aluA_i={1'b0,pcOffset_i[30:0]};
	endcase
	
	case(bsel_i)
		0: aluB_i=MWD;
		1: aluB_i={{16{ID[15]}},ID[15:0]};
	endcase
end
endmodule
