`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:38 06/15/2022 
// Design Name: 
// Module Name:    ZeroExtend 
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
module ZeroExtend(
		input [7:0] unextended,
		output reg [19:0] extended
    );
		
		always @ (*)
		begin
			extended[7:0] <= unextended[7:0];
			extended[19:8] <= 12'b0;
		end

endmodule
