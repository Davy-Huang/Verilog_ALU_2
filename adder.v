`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:30:31 10/17/2016 
// Design Name: 
// Module Name:    adder 
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
module adder( c_out, sum, a, b, c_in );

parameter size =8;
input [size-1:0] a;
input [size-1:0] b;
input c_in;

output c_out;
output [size-1:0] sum;

wire[size:0] carry;
assign carry[0]=c_in;
assign c_out = carry[size];

genvar i;
generate
	for (i=0; i<size; i=i+1) begin: adderBLock
		FA_str add_0(carry[i+1], sum[i], a[i], b[i], carry[i]);
		end
endgenerate


endmodule
