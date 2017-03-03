`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:54 02/10/2017 
// Design Name: 
// Module Name:    PC 
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
module PC (
  input CLK,
  input RESET,
  input [2:0] PCSEL,
  input [15:0] ID,
  input [31:0] JT,
  output reg [31:0] PC,
  output reg [31:0] PC_INC,
  output reg [31:0] PC_OFFSET
  );

//Internal registers and signals
reg [31:0] pc_4;

reg sync_read=0;
//Main body
always @ ( * ) begin
  PC_INC[30:0]=PC+4;
  PC_INC[31]=PC[31];
  PC_OFFSET[31]=PC[31];
  //PC_OFFSET[30:0]=PC_INC+{{14{ID[15]}},ID,2'b00};
  PC_OFFSET[30:0]=PC_INC+{{14{ID[15]}},ID,2'b00};
end
always @ ( posedge CLK ) begin
//	if(!RESET)
//		sync_read<=sync_read+1;
//	else
//		sync_read<=0;
  if(!RESET /*& sync_read*/) begin
    case(PCSEL)
      0: PC=PC_INC;
      1: PC=PC_OFFSET;
      2: begin
        PC[30:0]={JT[30:2],2'b00};
        if(PC[31]==1)
          PC[31]=PC[31] & JT[31];
      end
      3: PC=32'b10000000000000000000000000000100;
      4: PC=32'b10000000000000000000000000001000;
      default: PC=0;
    endcase
  end
  else if(RESET) begin
    PC=32'b10000000000000000000000000000000;
//	 sync_read<=0;
	 end
end
endmodule // PC