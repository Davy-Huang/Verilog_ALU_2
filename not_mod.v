`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:45 10/18/2016 
// Design Name: 
// Module Name:    not_mod 
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

module not_mod( Q, Q_NOT
    );
	 parameter size =8;
	 input [size-1:0] Q;
	 output [size-1:0] Q_NOT;
	 
	 genvar i;
	 generate
		for(i=0; i<size; i=i+1) begin: notblock
		not	   not1		(Q_NOT[i], Q[i]);
		end
	 endgenerate




endmodule
