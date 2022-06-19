`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:51:26 06/19/2022 
// Design Name: 
// Module Name:    IFetch 
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
module IFetch(
		pcSrc,
		clk,
		reset,
		extended,
		instruction
    );
	 
	 input pcSrc;
	 input clk;
	 input reset;
	 input [19:0] extended;
	 output wire [19:0] instruction;
	 
	 reg [19:0] pc;
	 reg [19:0] inpc;
	 reg [19:0] adderOut;
	 reg [19:0] extAdderOut;
	 
	 always @ (posedge clk)
	 begin
		if (reset == 1)
		begin
			pc = 20'b0;
		end
		else
		begin
			pc = inpc;
		end
		
		adderOut = pc + 20'b000000000000000000001;
		extAdderOut = adderOut + extended;
		if (pcSrc == 0) 
		begin
			inpc = adderOut;
		end
		else
		begin
			inpc = extAdderOut;
		end
		
	 end
	 
	 InstructionMemory insMem1(pc, instruction);


endmodule
