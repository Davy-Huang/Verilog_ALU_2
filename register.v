`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:56 10/17/2016 
// Design Name: 
// Module Name:    register 
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
module register( q,d, clk
    );
parameter size =8;
// lowest priority value 
input [size-1:0] d;
input clk;

output [size-1:0] q;
genvar i;
generate
	for (i=0; i<size; i=i+1) begin: registerBLock
		dff dff_0(q[i],d[i],clk);
		end
endgenerate

endmodule
