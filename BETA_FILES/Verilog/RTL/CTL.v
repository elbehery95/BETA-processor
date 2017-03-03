`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:20 02/10/2017 
// Design Name: 
// Module Name:    CTL 
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
module CTL (
  input [5:0] OP,
  input RESET,
  input IRQ,
  input Z,

  output reg [5:0] ALUFN,
  output reg ASEL,
  output reg BSEL,
  output reg MOE,
  output reg MWR,
  output reg [2:0] PCSEL,
  output reg RA2SEL,
  output reg WASEL,
  output reg [1:0] WDSEL,
  output reg WERF
  );

//internal signals and modules
reg mwr_i;
reg [2:0] pcsel_i;
reg wasel_i;
reg [1:0] wdsel_i;
reg werf_i;

//code body
always @ ( * ) begin
  if(IRQ) begin
    MWR<=0;
    PCSEL<=3'b100;
    WASEL<=1;
    WDSEL<=0;
    WERF<=1;
  end
  else begin
	 if(RESET)
		MWR<=0;
	 else
		MWR<=mwr_i;
    PCSEL<=pcsel_i;
    WASEL<=wasel_i;
    WDSEL<=wdsel_i;
    WERF<=werf_i;
  end
  case(OP)
    6'b011000: begin //LD
      ALUFN<=6'b010000;
      ASEL<=0;
      BSEL<=1;
      MOE<=1;
      mwr_i<=0;
      pcsel_i<=0;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2;
      werf_i<=1;
    end

    6'b011001: begin //ST
      ALUFN<=6'b010000;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=1;
      pcsel_i<=0;
      RA2SEL<=1;
      wasel_i<=0;
      wdsel_i<=2'b00;
      werf_i<=0;
    end

    6'b011011: begin //JMP
      ALUFN<=6'b000000;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b010;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b00;
      werf_i<=1;
    end

    6'b011100: begin //BEQ
      ALUFN<=6'b000000;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      if(Z==1)
        pcsel_i<=3'b001;
      else
        pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b00;
      werf_i<=1;
    end

    6'b011101: begin //BNE
      ALUFN<=6'b000000;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      if(Z==0)
        pcsel_i<=3'b001;
      else
        pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b00;
      werf_i<=1;
    end

    6'b011111: begin //LDR
      ALUFN<=6'b101010;
      ASEL<=1;
      BSEL<=0;
      MOE<=1;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b10;
      werf_i<=1;
    end

    6'b100000: begin //ADD
      ALUFN<=6'b010000;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b100001: begin //SUB
      ALUFN<=6'b010001;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b100100: begin //CMPEQ
      ALUFN<=6'b000011;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b100101: begin //CMPLT
      ALUFN<=6'b000101;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b100110: begin //CMPLE
      ALUFN<=6'b000111;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b101000: begin //AND
      ALUFN<=6'b101000;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b101001: begin //OR
      ALUFN<=6'b101110;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b101010: begin //XOR
      ALUFN<=6'b100110;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b101011: begin //XNOR
      ALUFN<=6'b101001;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b101100: begin //SHL
      ALUFN<=6'b110000;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b101101: begin //SHR
      ALUFN<=6'b110001;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b101110: begin //SRA
      ALUFN<=6'b110011;
      ASEL<=0;
      BSEL<=0;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b110000: begin //ADDC
      ALUFN<=6'b010000;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b110001: begin //SUBC
      ALUFN<=6'b010001;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b110100: begin //CMPEQC
      ALUFN<=6'b000011;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b110101: begin //CMPLTC
      ALUFN<=6'b000101;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b110110: begin //CMPLEC
      ALUFN<=6'b000111;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b111000: begin //ANDC
      ALUFN<=6'b101000;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b111001: begin //ORC
      ALUFN<=6'b101110;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b111010: begin //XORC
      ALUFN<=6'b100110;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b111011: begin //XNORC
      ALUFN<=6'b101001;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b111100: begin //SHLC
      ALUFN<=6'b110000;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b111101: begin //SHRC
      ALUFN<=6'b110001;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end

    6'b111110: begin //SRAC
      ALUFN<=6'b110011;
      ASEL<=0;
      BSEL<=1;
      MOE<=0;
      mwr_i<=0;
      pcsel_i<=3'b000;
      RA2SEL<=0;
      wasel_i<=0;
      wdsel_i<=2'b01;
      werf_i<=1;
    end
  default: begin
    ALUFN<=6'b000000;
    ASEL<=0;
    BSEL<=0;
    MOE<=0;
    mwr_i<=0;
    pcsel_i<=3'b011;
    RA2SEL<=0;
    wasel_i<=1;
    wdsel_i<=2'b00;
    werf_i<=1;
  end
  endcase
end
endmodule // CTL