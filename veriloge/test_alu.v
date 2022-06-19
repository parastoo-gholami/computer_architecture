`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:10 04/19/2022
// Design Name:   ALU
// Module Name:   D:/verilog codes/tamrin1/1/ALU/test_alu.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_alu;

	// Inputs
	reg [19:0] a;
	reg [19:0] b;
	reg [2:0] sel;

	// Outputs
	wire [19:0] c;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		
		a = 20'b00000000000000001000; b = 20'b00000000000000000100; sel = 001;
		#100;
		a = 20'b00000000000000001100; b = 20'b00000000000000000011; sel = 010;
		#100;
		a = 20'b00000000000000000100; b = 20'b00000000000000001000; sel = 011;
		#100;
		
		a = 20'b00000000000000001100; b = 20'b00000000000000000100; sel = 100;
		#100;
		
		a = 20'b00000000000000011100; b = 20'b00000000000001001000; sel = 101;
		#100;
		
		a = 20'b00000000100000001100; b = 20'b00000000000001001000; sel = 110;
		#100;
		
		a = 20'b00000000011000001100; b = 20'b00111001001001001000; sel = 111;
		#100;
	end
      
endmodule

