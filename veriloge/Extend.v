`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:05 06/15/2022 
// Design Name: 
// Module Name:    Extend 
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
module Extend(
		input [7:0] unextended,
		output reg [19:0] extended
    );
	 
	 always @ (*)
	 begin
		extended[19:0] <= { {12{unextended[7]}}, unextended[7:0] };
	 end


endmodule
