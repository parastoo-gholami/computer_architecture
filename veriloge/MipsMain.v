`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:36 06/19/2022 
// Design Name: 
// Module Name:    MipsMain 
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
module MipsMain(
		clk,
		reset,
		writedata
    );
	 
	 input clk;
	 input reset;
	 output wire [19:0] writedata;
	 
	 wire pcSrc;
	 wire [19:0] extended;
	 wire [19:0] instruction;
	 IFetch ifetch1(pcSrc, clk, reset, extended, instruction);
	 
	 wire [3:0] opcode; 
	 wire RegWrite; 
	 wire RegDst;
    wire AluSrc; 
	 wire MemToReg;
	 wire MemWrite;
	 wire MemRead;
	 wire branch;
	 wire extOp; 
	 wire [2:0] AluOp;
	 contUnit controlunit1(instruction[19:16], RegWrite, RegDst, AluSrc, MemToReg, MemWrite, MemRead, branch, extOp, AluOp);
	 
	 wire [3:0] regaddress;
	 /*
	 if (RegDst == 0) 
	 begin
		regaddress = instruction[8:11];
	 end
	 else
	 begin
		regaddress = instruction[4:7];
	 end
	 */
	 
	// wire [19:0] writedata;
	 wire [19:0] reg1out;
	 wire [19:0] reg2out;
	 RegisterFile registerfile1(instruction[15:12], instruction[11:8], regaddress, RegWrite, writedata, clk, reg1out, reg2out);
	 
	 wire [2:0]aluctr;
	 AluCont alucontrol1(instruction[3:0], AluOp, aluctr);
	 
	 
	 wire [19:0] zeroExtended;
	 wire [19:0] signExtended;
	 ZeroExtend zeroExtend1(instruction[7:0], zeroExtended);
	 Extend extend1(instruction[7:0], signExtended);
	 MUX mux1(zeroExtended, signExtended, extOp, extended);
	 
	 wire [19:0] b;
	 MUX mux2(reg2out, extended, AluSrc, b);
	 wire [19:0] result;
	 wire zeroCheck;
	 ALU alu1(reg1out, b, aluctr, result, zeroCheck);
	 //pcSrc = zeroCheck & branch;
	 	
	 DataMemory dataMemory1(result, reg2out, MemWrite, MemRead, MemToReg, clk, writedata);
	 

endmodule
