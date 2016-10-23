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
module top_verification(R2,R3,R0,R0_carry,select,clk);

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

assign option_0=R2;													//	000	0
assign option_1=~R2;													//	001	1
assign option_2=R2+R3;												//	010	2			HAS CARRY OUT
assign option_3=R2-R3;												//	011	3			HAS CARRY OUT
assign option_4=R2|R3;												//	100	4
assign option_5=R2&R3;												//	101	5
slt_v slt_v1 (R2,R3,option_6 );								//	110	6			HAS CARRY OUT
assign option_7=0;


mux_mod #(size,n) mux_mod1({option_7,option_6,option_5,option_4,option_3,option_2,option_1,option_0},R1,select);


register #(size) 	regester1(R0,R1,clk);




endmodule
