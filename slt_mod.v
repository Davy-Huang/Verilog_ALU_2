`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	SLT R1 = 1 if R2 < R3
//	== R3-R2 > 0
//	==> R3-R2 has 0 as its highest bit
//	==> R1=not(R3-R2)[lastbit]
//	R1 needs to be size bits to make sense in the mux
//	the first bit will be the set or cleared bit
//	the last bit will be the carry out of the subtraction
//////////////////////////////////////////////////////////////////////////////////
module slt_mod(R1,R2,R3,c_out);
parameter size=8;

input [size-1:0] R3;
input [size-1:0] R2;

output [size-1:0] R1;
output c_out;

wire [size-1:0] sum;

sub_mod #(size) sub_mod1(c_out,sum,R3,R2);
not_mod #(1) not1(sum[size-1],R1[0]);
assign R1[size-1:1]=0;





endmodule
