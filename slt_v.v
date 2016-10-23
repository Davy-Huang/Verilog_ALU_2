`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:01:54 10/21/2016 
// Design Name: 
// Module Name:    slt_v 
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
module slt_v(R2,R3,option_6 );
parameter size=8;
input [size-1:0] R2;
input [size-1:0] R3;
output reg [size-1:0] option_6;

always@ (R2,R3)
	begin
	if(R3>R2)
		begin option_6=1; end
	else
		begin option_6=0; end
	end		

endmodule
