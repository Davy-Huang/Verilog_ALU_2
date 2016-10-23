`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	.R2(b) is just here for completion and to establish hierarchy. 
//	The entire module is technically functionaly redundant so
//
//////////////////////////////////////////////////////////////////////////////////
module mov_mod(a,b,c);
parameter size=8;

input [size-1:0] a;
input [size-1:0] b;

output [size-1:0] c;

genvar i;
generate
	for(i=0; i<size; i=i+1) begin:modblock
		assign c[i]=a[i];
	end
endgenerate



endmodule
