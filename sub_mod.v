`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	Just radix addition. a-b  ==  a+(-b)  ==  a+not(b_)1
//
//////////////////////////////////////////////////////////////////////////////////
module sub_mod(c_out, sum, a, b);
parameter size=8;

input [size-1:0] a;
input [size-1:0] b;

output [size-1:0] sum;
output c_out;

wire[size-1:0] b_not;

not_mod #(size) not_mod1(b,b_not);
adder #(size) adder1(c_out, sum,a,b_not,1'b1);


endmodule
