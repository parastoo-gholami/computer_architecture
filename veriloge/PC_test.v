`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:06:39 06/14/2022
// Design Name:   PC
// Module Name:   D:/verilog codes/acProject/PC/PC/PC_test.v
// Project Name:  PC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_test;

	// Inputs
	reg [19:0] inpc;
	reg clk;
	reg reset;

	// Outputs
	wire [19:0] pc;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.inpc(inpc), 
		.clk(clk),
		.reset(reset),
		.pc(pc)
	);

	initial begin
		// Initialize Inputs
		inpc = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		inpc = 0;
		reset = 0;
		
		#100;
		
		inpc = 1;
		reset = 0;
		
		#100;
		
		inpc = 2;
		reset = 0;
		
		#100;
		
		inpc = 4;
		reset = 0;
		
		#100;
		
		inpc = 7;
		reset = 1;
		#100;
		
		inpc = 1;
		reset = 0;
		
		#100;
		
		inpc = 29;
		
		#100;

	end
	always #50 clk = ~clk;
      
endmodule

