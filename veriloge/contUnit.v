`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:03 05/03/2022 
// Design Name: 
// Module Name:    contUnit 
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
module contUnit(opcode, RegWrite, RegDst, AluSrc, MemToReg, MemWrite, MemRead, branch, extOp, AluOp
    );
		input [3:0]opcode;
		
		output reg RegWrite;
		output reg RegDst;
		output reg AluSrc;
		output reg MemToReg;
		output reg MemWrite;
		output reg MemRead;
		output reg branch;
		output reg extOp;
		output reg [2:0]AluOp;
		
		always@(*)
		begin
			case(opcode)
			4'b0000:    //R-type
			begin
				RegWrite = 1;
				RegDst = 1;
				AluSrc = 0;
				MemToReg = 0;
				MemWrite = 0;
				MemRead = 0;
				branch = 0;
				extOp = 0;
				AluOp = 3'b100;
			end
			
			4'b0001:   //lw
			begin
				RegWrite = 1;
				RegDst = 0;
				AluSrc = 1;
				MemToReg = 1;
				MemWrite = 0;
				MemRead = 1;
				branch = 0;
				extOp = 1;
				AluOp = 3'b001;
			end
			
			4'b0010:   //sw
			begin
				RegWrite = 0;
				RegDst = 0;
				AluSrc = 1;
				MemToReg = 0;
				MemWrite = 1;
				MemRead = 0;
				branch = 0;
				extOp = 1;
				AluOp = 3'b001;
			end
			
			4'b0011:   //beq
			begin
				RegWrite = 0;
				RegDst = 0;
				AluSrc = 0;
				MemToReg = 0;
				MemWrite = 0;
				MemRead = 0;
				branch = 1;
				extOp = 0;
				AluOp = 3'b010;
			end
			endcase
		end

endmodule
