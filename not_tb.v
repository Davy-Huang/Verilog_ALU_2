`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:11 10/20/2016
// Design Name:   not_mod
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/Lab5_v2/DH_LAB_5/not_tb.v
// Project Name:  DH_LAB_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: not_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module not_tb;
parameter size=4;
	// Inputs
	reg [size-1:0] Q;

	// Outputs
	wire [size-1:0] Q_NOT;

	// Instantiate the Unit Under Test (UUT)
	not_mod #(size) uut (
		.Q(Q), 
		.Q_NOT(Q_NOT)
	);

	initial begin
		// Initialize Inputs
		Q = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	#2 {Q}={Q}+1;
      
endmodule

