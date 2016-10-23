`timescale 1Ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:50 10/20/2016 
// Design Name: 
// Module Name:    or_mod 
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
module or_mod(a,b,c  );
parameter size=8;

input [size-1:0] a;
input [size-1:0] b;

output[size-1:0] c;

genvar i;

generate
	for(i=0; i<size; i=i+1) begin:orblock
	or or1(c[i],a[i],b[i]);
	end
endgenerate


endmodule
