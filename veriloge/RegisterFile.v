`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:53 06/18/2022 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
		reg1,
		reg2,
		regaddress,
		regwrite,
		writedata,
		clk,
		reg1out,
		reg2out
    );
	 
	 input [3:0] reg1;
	 input [3:0] reg2;
	 input [3:0] regaddress;
	 input regwrite;
	 input [19:0] writedata;
	 input clk;
	 output reg [19:0] reg1out;
	 output reg [19:0] reg2out;
	 
	 reg [19:0] register [15:0];
	 
	 integer i;
	 initial begin
	 for (i = 0; i < 16; i = i + 1) begin
		register[i] = 20'b0;
	 end
	 
	 end
	 always @ (posedge clk)
	 begin
		if (regwrite) begin
			register[regaddress] = writedata;
		end
		reg1out = register[reg1];
		reg2out = register[reg2];
	 end


endmodule
