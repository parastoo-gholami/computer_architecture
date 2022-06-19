`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:58:19 06/15/2022
// Design Name:   Extend
// Module Name:   D:/verilog codes/acProject/Extend/Extend_test.v
// Project Name:  Extend
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Extend_test;

	// Inputs
	reg [7:0] unextended;
	reg clk;

	// Outputs
	wire [19:0] extended;

	// Instantiate the Unit Under Test (UUT)
	Extend uut (
		.unextended(unextended), 
		.clk(clk), 
		.extended(extended)
	);

	initial begin
		// Initialize Inputs
		unextended = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		unextended = 12;
		clk = 1;
		#100;
		
		unextended = -20;
		clk = 0;
		#100;
		
		unextended = 00100100;
		clk = 1;
		#100;
		
		unextended = 00001111;
		clk = 0;
		#100;
		
		unextended = 00100011;
		clk = 1;
		#100;
		
		unextended = 45;
		clk = 0;
		#100;
		
		unextended = 45;
		clk = 1;
		#100;

	end
      
endmodule

