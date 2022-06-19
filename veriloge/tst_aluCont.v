`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:55 05/04/2022
// Design Name:   AluCont
// Module Name:   D:/verilog codes/acProject/alu control/AluControl/tst_aluCont.v
// Project Name:  AluControl
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AluCont
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tst_aluCont;

	// Inputs
	reg [3:0] func;
	reg [2:0] aluop;

	// Outputs
	wire [2:0] aluctr;

	// Instantiate the Unit Under Test (UUT)
	AluCont uut (
		.func(func), 
		.aluop(aluop), 
		.aluctr(aluctr)
	);

	initial begin
		// Initialize Inputs
		func = 4'b0001;
		aluop = 100;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		func = 4'b0010;
		aluop = 100;
		#100;
		
		func = 4'b0011;
		aluop = 001;
		#100;
		
		func = 4'b0011;
		aluop = 010;
		#100;
		
		func = 4'b0011;
		aluop = 100;
		#100;
		
		func = 4'b0100;
		aluop = 100;
		#100;
		
		func = 4'b0101;
		aluop = 100;
		#100;
		
		func = 4'b0110;
		aluop = 100;
		#100;
		
		func = 4'b0111;
		aluop = 100;
		#100;
	end
      
endmodule

