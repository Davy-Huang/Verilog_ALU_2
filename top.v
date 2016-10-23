`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:30 10/20/2016 
// Design Name: 
// Module Name:    top 
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
module top(R2,R3,R0,R0_carry,select,clk);

parameter size=8;
parameter n=3;

input [n-1:0] select;
input [size-1:0] R2;
input [size-1:0] R3;
input clk;

output [size-1:0] R0;
output R0_carry;

wire [size-1:0] R1;
wire R1_carry;
wire [size-1:0] option_0,option_1,option_2,option_3,option_4,option_5,option_6,option_7;
wire c_out2;
wire c_out3;
wire c_out6;

mov_mod #(size) mov_mod1(R2,R3,option_0);						//	000	0
not_mod #(size) not_mod1(R2,option_1);							//	001	1
adder #(size) adder(c_out2,option_2,R2,R3,1'b0);			//	010	2			HAS CARRY OUT
sub_mod #(size) sub_mod1(c_out3,option_3,R2,R3);			//	011	3			HAS CARRY OUT
or_mod_v2 #(size) or_mod_v21(R2,R3,option_4);				//	100	4
and_mod #(size) and_mod(R2,R3,option_5);						//	101	5
slt_mod #(size) slt_mod1(option_6,R2,R3,c_out6);			//	110	6			HAS CARRY OUT
mov_mod2 #(size) mov_mod21(R2,R3,option_7);					//	101	7

mux_mod #(size,n) mux_mod1({option_7,option_6,option_5,option_4,option_3,option_2,option_1,option_0},R1,select);
mux_mod #(1,n) mux_mod2({0,c_out6,0,0,c_out3,c_out2,0,0},R1_carry,select);

register #(size) 	regester1(R0,R1,clk);
register #(1) 		regester2(R0_carry,R1_carry,clk);



endmodule
