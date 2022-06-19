`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:19:12 06/19/2022
// Design Name:   IFetch
// Module Name:   D:/verilog codes/acProject/IFetch/IFetch_test.v
// Project Name:  IFetch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IFetch_test;

	// Inputs
	reg pcSrc;
	reg clk;
	reg reset;
	reg [19:0] extended;

	// Outputs
	wire [19:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	IFetch uut (
		.pcSrc(pcSrc), 
		.clk(clk), 
		.reset(reset), 
		.extended(extended), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		pcSrc = 0;
		clk = 0;
		reset = 0;
		extended = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		pcSrc = 0;
		reset = 1;
		extended = 0;
		#100;
		
		pcSrc = 0;
		reset = 0;
		extended = 0;
		#100;
		
		pcSrc = 0;
		reset = 0;
		extended = 0;
		#100;
		
		pcSrc = 0;
		reset = 0;
		extended = 0;
		#100;
		
		pcSrc = 0;
		reset = 0;
		extended = 0;
		#100;
		
		pcSrc = 0;
		reset = 1;
		extended = 0;
		#100;
		
		pcSrc = 0;
		reset = 0;
		extended = 0;
		#100;
		
		pcSrc = 1;
		reset = 0;
		extended = 2;
		#100;
		
		pcSrc = 0;
		reset = 0;
		extended = 0;
		#100;

	end
	always #50 clk = ~clk;
      
endmodule

