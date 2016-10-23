`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:29:18 10/20/2016
// Design Name:   mux_mod
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/Lab5_v2/DH_LAB_5/mux_mod_tb.v
// Project Name:  DH_LAB_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_mod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_mod_tb;
parameter size=4;
parameter n=3;
	// Inputs
	reg [(size*(2**n))-1:0] in;
	reg [n-1:0] select;

	// Outputs
	wire [size-1:0] out;

	// Instantiate the Unit Under Test (UUT)
	mux_mod #(size,n)  uut (
		.in(in), 
		.out(out), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		in = 32'b01110110010101000011001000010000;
		select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	#5 select=select+1;
      
endmodule

