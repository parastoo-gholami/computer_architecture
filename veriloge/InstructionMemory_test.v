`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:56:27 06/16/2022
// Design Name:   InstructionMemory
// Module Name:   D:/verilog codes/acProject/InstructionMemory/InstructionMemory_test.v
// Project Name:  InstructionMemory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstructionMemory_test;

	// Inputs
	reg [19:0] address;

	// Outputs
	wire [19:0] inst;

	// Instantiate the Unit Under Test (UUT)
	InstructionMemory uut (
		.address(address), 
		.inst(inst)
	);

	initial begin
		// Initialize Inputs
		address = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		address = 20'b00000000000000000001;
		#100;
		
		address = 2;
		#100;
		
		address = 3;
		#100;
		
		address = 4;
		#100;
		
		address = 5;
		#100;
		
		address = 6;
		#100;
		
		address = 7;
		#100;
		
	end
      
endmodule

