`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:16:08 06/14/2022
// Design Name:   MUX
// Module Name:   D:/verilog codes/acProject/MUX/MUX_test.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_test;

	// Inputs
	reg [19:0] a;
	reg [19:0] b;
	reg sel;

	// Outputs
	wire [19:0] x;

	// Instantiate the Unit Under Test (UUT)
	MUX uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.x(x)
	);

	initial begin
		// Initialize Inputs
		a = 4;
		b = 6;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 7;
		b = 24;
		sel = 1;
		#100;
		
		a = 45;
		b = 32;
		sel = 1;
		#100;
		
		a = 3;
		b = 4;
		sel = 0;
		#100;
		
		
		a = 10;
		b = 11;
		sel = 1;
		#100;
		
		
		a = 17;
		b = 80;
		sel = 0;
		#100;

	end
      
endmodule

