`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:36:15 10/21/2016
// Design Name:   slt_mod
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/Lab5_v2/DH_LAB_5/slt_mod_tb2.v
// Project Name:  DH_LAB_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: slt_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module slt_mod_tb2;
parameter size=4;
	// Inputs
	reg [size-1:0] R2;
	reg [size-1:0] R3;

	// Outputs
	wire [size-1:0] R1;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	slt_mod #(size) uut (
		.R1(R1), 
		.R2(R2), 
		.R3(R3), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		R2 = -4;
		R3 = -4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
		always
	#2 R3=R3+1;			//	roll over checks the negetive number
							//	R2 starts as -1 so I can check for overflow
      
endmodule

