`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:45:35 05/03/2022
// Design Name:   contUnit
// Module Name:   D:/verilog codes/acProject/control unit/controlUnit/test_contUnit.v
// Project Name:  controlUnit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: contUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_contUnit;

	// Inputs
	reg [3:0] opcode;

	// Outputs
	wire RegWrite;
	wire RegDst;
	wire AluSrc;
	wire MemToReg;
	wire MemWrite;
	wire branch;
	wire extOp;
	wire [2:0] AluOp;

	// Instantiate the Unit Under Test (UUT)
	contUnit uut (
		.opcode(opcode), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.AluSrc(AluSrc), 
		.MemToReg(MemToReg), 
		.MemWrite(MemWrite), 
		.branch(branch), 
		.extOp(extOp), 
		.AluOp(AluOp)
	);

	initial begin
		// Initialize Inputs
		opcode = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		opcode = 4'b0001;
		#100;
		
		opcode = 4'b0010;
		#100;
		
		opcode = 4'b0011;
		#100;
	end
      
endmodule

