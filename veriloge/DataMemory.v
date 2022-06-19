`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:00 06/18/2022 
// Design Name: 
// Module Name:    DataMemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataMemory(
		address, 
		writeData,
		memwrite,
		memread,
		memtoreg,
		clk,
		readData
    );
	 
	 input [19:0] address;
	 input wire [19:0] writeData;
	 input memwrite;
    input memread;
	 input memtoreg;
	 input clk;
	 output reg [19:0] readData;
		
	 reg [19:0] mem [31:0];
	 integer i;
	 
	 initial begin
		readData <= 20'b0;
		for (i = 0; i < 32; i = i + 1) begin
			mem[i] <= i;
		end
	 end
	 
	 
	 always @ (posedge clk)
	 begin
	 
	 if (memwrite)
	 begin
		mem[address[4:0]] <= writeData;
	 end
	 if (memread)
	 begin
		readData <= mem[address[4:0]];
	 end
	 	 
	 if (memtoreg == 0)
	 begin
		readData <= address;
	 end
	 
	 end
	
	
	


endmodule
