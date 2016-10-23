`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:38:03 10/17/2016
// Design Name:   adder
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/lab5/lab5_prelab/lab5_prelab/adder_tb.v
// Project Name:  lab5_prelab
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_tb;
parameter size=4;
	// Inputs
	reg [size-1:0] a;
	reg [size-1:0] b;
	reg c_in;

	// Outputs
	wire c_out;
	wire [size-1:0] sum;

	// Instantiate the Unit Under Test (UUT)
	adder #(size) uut (
		.c_out(c_out), 
		.sum(sum), 
		.a(a), 
		.b(b), 
		.c_in(c_in)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
	always
	#2 {c_in,a,b}={c_in,a,b}+1;
	
endmodule

