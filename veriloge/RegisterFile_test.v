`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:32:32 06/19/2022
// Design Name:   RegisterFile
// Module Name:   D:/verilog codes/acProject/RegisterFile/RegisterFile_test.v
// Project Name:  RegisterFile
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterFile_test;

	// Inputs
	reg [3:0] reg1;
	reg [3:0] reg2;
	reg [3:0] regaddress;
	reg regwrite;
	reg [19:0] writedata;
	reg clk;

	// Outputs
	wire [19:0] reg1out;
	wire [19:0] reg2out;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.reg1(reg1), 
		.reg2(reg2), 
		.regaddress(regaddress), 
		.regwrite(regwrite), 
		.writedata(writedata), 
		.clk(clk), 
		.reg1out(reg1out), 
		.reg2out(reg2out)
	);

	initial begin
		// Initialize Inputs
		reg1 = 0;
		reg2 = 0;
		regaddress = 0;
		regwrite = 0;
		writedata = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		reg1 = 3;
		reg2 = 4;
		regaddress = 3;
		regwrite = 1;
		writedata = 2;
		#100;
		
		reg1 = 3;
		reg2 = 4;
		regaddress = 4;
		regwrite = 1;
		writedata = 4;
		#100;
		
		reg1 = 3;
		reg2 = 4;
		regaddress = 0;
		regwrite = 0;
		writedata = 0;
		#100;
		
		reg1 = 7;
		reg2 = 10;
		regaddress = 0;
		regwrite = 0;
		writedata = 0;
		#100;

	end
	always #50 clk = ~clk;
      
endmodule

