`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:26 06/14/2022 
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
module PC(
		input [19:0] inpc,
		input clk,
		input reset,
		output reg [19:0] pc
    );
	
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
		
	end
	

endmodule
