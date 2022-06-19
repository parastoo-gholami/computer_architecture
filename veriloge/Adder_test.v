`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:38:13 06/14/2022
// Design Name:   Adder
// Module Name:   D:/verilog codes/acProject/Adder/Adder_test.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_test;

	// Inputs
	reg [19:0] a;
	reg [19:0] b;

	// Outputs
	wire [19:0] c;

	// Instantiate the Unit Under Test (UUT)
	Adder uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 10;
		b = 20;
		#100;
		
		a = 15;
		b = 2;
		#100;
		
		a = 32;
		b = 1;
		#100;
		
		a = 22;
		b = 17;
		#100;
		
		a = 8;
		b = 5;
		#100;
		
		a = 4;
		b = 87;
		#100;

	end
      
endmodule

