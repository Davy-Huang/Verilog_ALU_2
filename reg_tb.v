`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:17:44 10/17/2016
// Design Name:   register
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/lab5/lab5_prelab/lab5_prelab/reg_tb.v
// Project Name:  lab5_prelab
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_tb;
	
	parameter size=4;
	// Inputs
	reg [size-1:0] d;
	reg clk;

	// Outputs
	wire [size-1:0] q;

	// Instantiate the Unit Under Test (UUT)
	register #(size) uut (
		.q(q), 
		.d(d), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always
	#5 clk=~clk;
	
	always
	#20 d=d+1;
endmodule

