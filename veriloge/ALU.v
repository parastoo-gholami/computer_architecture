`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:09 04/19/2022 
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
module ALU(a, b, sel, c, zeroCheck
    );
	 
	 input [19:0]a;
	 input [19:0]b;
	 input [2:0]sel;
	 output reg[19:0]c;
	 output reg zeroCheck;
	 
	 always@(*)
	 begin
		case(sel)
		3'b001 : c = a + b;
		3'b010 : c = a - b;
		3'b011 : c = a * b;
		3'b100 : c = a / b;
		3'b101 : c = a & b;
		3'b110 : c = a | b;
		3'b111 : c = a ^ b;
		endcase
		
		if (c == 0) 
		begin
			zeroCheck = 1;
		end
	 end
	 


endmodule
