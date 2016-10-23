`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//	Generatilzed for n = selections bits and size = bits in the input
//
//////////////////////////////////////////////////////////////////////////////////
module mux_mod(in, out, select);
parameter size=8;
parameter n=3;													// 3 bits

input [n-1:0] select;										//	3 bit selection
input [(size*(2**n))-1:0] in;								//	input is one large array. The length is size*2^n==number of bits in each input*number inputs to select from
output [size-1:0] out;



integer select_pointer;										//	auto conversion from binary to int
always @( select )
    select_pointer = select;
	 

genvar j;
generate
	for(j=0; j<size; j=j+1) begin:muxblock
		assign out[j]=in[select_pointer*size+j];
	end
endgenerate


endmodule
