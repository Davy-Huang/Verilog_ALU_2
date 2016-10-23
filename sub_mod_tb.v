`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:14:19 10/20/2016
// Design Name:   sub_mod
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/Lab5_v2/DH_LAB_5/sub_mod_tb.v
// Project Name:  DH_LAB_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sub_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sub_mod_tb;
	parameter size=4;
	// Inputs
	reg [size-1:0] a;
	reg [size-1:0] b;

	// Outputs
	wire c_out;
	wire [size-1:0] sum;

	// Instantiate the Unit Under Test (UUT)
	sub_mod #(size) uut (
		.c_out(c_out), 
		.sum(sum), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 10;
		b = 10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	#2 b=b-1;
      
endmodule

