`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:46 06/14/2022 
// Design Name: 
// Module Name:    MUX 
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
module MUX(
		input [19:0] a,
		input [19:0] b,
		input sel,
		output reg [19:0] x
    );

	always @ (*)
	begin
		if (sel == 0)
			x = a;
		else
			x = b;
	end

endmodule
