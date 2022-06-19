`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:45 06/15/2022
// Design Name:   ZeroExtend
// Module Name:   D:/verilog codes/acProject/ZeroExtend/ZeroExtend_test.v
// Project Name:  ZeroExtend
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ZeroExtend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ZeroExtend_test;

	// Inputs
	reg [7:0] unextended;
	reg clk;

	// Outputs
	wire [19:0] extended;

	// Instantiate the Unit Under Test (UUT)
	ZeroExtend uut (
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
		
		unextended = 23;
		clk = 1;
		#100;
		
		unextended = -40;
		clk = 0;
		#100;
		
		unextended = -40;
		clk = 1;
		#100;
		
		unextended = 84;
		clk = 0;
		#100;
		
		
		unextended = 84;
		clk = 1;
		#100;
	
		unextended = 16;
		clk = 0;
		#100;
		
		unextended = 16;
		clk = 1;
		#100;
	
		
		unextended = -81;
		clk = 0;
		#100;
		
		unextended = -81;
		clk = 1;
		#100;

	end
      
endmodule

