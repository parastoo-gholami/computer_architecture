`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:50:05 06/18/2022
// Design Name:   DataMemory
// Module Name:   D:/verilog codes/acProject/DataMemory/DataMemory_test.v
// Project Name:  DataMemory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataMemory_test;

	// Inputs
	reg [19:0] address;
	reg [19:0] writeData;
	reg memwrite;
	reg memread;
	reg memtoreg;
	reg clk;

	// Outputs
	wire [19:0] readData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.address(address), 
		.writeData(writeData), 
		.memwrite(memwrite), 
		.memread(memread), 
		.memtoreg(memtoreg), 
		.clk(clk), 
		.readData(readData)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		writeData = 0;
		memwrite = 0;
		memread = 0;
		memtoreg = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		address = 1;
		writeData = 0;
		memwrite = 0;
		memread = 1;
		memtoreg = 1;
		#100;
		
		
		address = 5;
		writeData = 2;
		memwrite = 1;
		memread = 0;
		memtoreg = 1;
		#100;
		
		address = 3;
		writeData = 0;
		memwrite = 0;
		memread = 1;
		memtoreg = 1;
		#100;
		
		address = 4;
		writeData = 0;
		memwrite = 0;
		memread = 1;
		memtoreg = 1;
		#100;
		
		address = 2;
		writeData = 0;
		memwrite = 0;
		memread = 1;
		memtoreg = 0;
		#100;
		
		address = 5;
		writeData = 0;
		memwrite = 0;
		memread = 1;
		memtoreg = 1;
		#100;
		
		address = 8;
		writeData = 12;
		memwrite = 1;
		memread = 0;
		memtoreg = 1;
		#100;
		
		
		address = 8;
		writeData = 0;
		memwrite = 0;
		memread = 1;
		memtoreg = 1;
		#100;
		
		
		address = 8;
		writeData = 0;
		memwrite = 0;
		memread = 1;
		memtoreg = 0;
		#100;

	end 
	always #50 clk = ~clk;
      
endmodule

