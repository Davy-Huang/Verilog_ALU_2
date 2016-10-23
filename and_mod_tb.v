`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:05 10/20/2016
// Design Name:   and_mod
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/Lab5_v2/DH_LAB_5/and_mod_tb.v
// Project Name:  DH_LAB_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: and_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_mod_tb;
parameter size=4;
	// Inputs
	reg [size-1:0] a;
	reg [size-1:0] b;

	// Outputs
	wire [size-1:0] c;

	// Instantiate the Unit Under Test (UUT)
	and_mod #(size) uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	#2 {a,b}={a,b}+1;
      
endmodule

