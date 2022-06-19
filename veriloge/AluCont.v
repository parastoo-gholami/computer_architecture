`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:15 05/04/2022 
// Design Name: 
// Module Name:    AluCont 
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
module AluCont(func, aluop, aluctr
    );
	 
	 input [3:0] func;
	 input [2:0] aluop;
	 output reg [2:0]aluctr;
	 
    always@(*)
	 begin
    if(aluop == 3'b 100)
		aluctr = func[2:0];
    else
		aluctr = aluop;    
	 end
    


endmodule
