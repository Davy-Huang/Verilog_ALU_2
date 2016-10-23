`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	This is the 111 selection module. For completion
//
//////////////////////////////////////////////////////////////////////////////////
module mov_mod2(a,b,c);
parameter size=8;

input [size-1:0] a;
input [size-1:0] b;

output [size-1:0] c;

genvar i;
generate
	for(i=0; i<size; i=i+1) begin:modblock
		assign c[i]=b[i];
	end
endgenerate



endmodule
