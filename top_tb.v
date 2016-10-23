`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:56:14 10/21/2016
// Design Name:   top
// Module Name:   /ad/eng/users/d/a/davyh/Desktop/413/Lab5_v2/DH_LAB_5/top_tb.v
// Project Name:  DH_LAB_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;
parameter size=4;
parameter n=3;
	// Inputs
	reg [size-1:0] R2;
	reg [size-1:0] R3;
	reg [n-1:0] select;
	reg clk;

	// Outputs
	wire [size-1:0] R0;
	wire R0_carry;
	
	wire [size-1:0] R0_v;
	wire error_flag;

	// Instantiate the Unit Under Test (UUT)
	top #(size,n) uut (
		.R2(R2), 
		.R3(R3), 
		.R0(R0), 
		.R0_carry(R0_carry), 
		.select(select), 
		.clk(clk)
	);

	top_verification #(size,n) uut2 (
		.R2(R2), 
		.R3(R3), 
		.R0(R0_v), 
		.R0_carry(R0_carry), 
		.select(select), 
		.clk(clk)
	);

	assign error_flag = (R0 != R0_v);

	initial begin
		// Initialize Inputs
		R2 = 0;
		R3 = 0;
		select = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
	#20; 
		select=0;		//MOV
		R3=5;
		R2=6;
		
		#20; 
		select=1;		//NOT
		R3=5;
		R2=6;
		
		#20; 
		select=2;		//ADD
		R3=15;
		R2=15;
		
		#20; 
		select=2;		//ADD
		R3=1;
		R2=-1;
		
		#20; 
		select=2;		//ADD
		R3=10;
		R2=-4;
		
		#20; 
		select=3;		//SUB
		R3=15;
		R2=15;
		
		#20; 
		select=3;		//SUB
		R3=15;
		R2=10;
		
		#20; 
		select=3;		//SUB
		R3=10;
		R2=15;
		
		#20; 
		select=3;		//SUB
		R3=15;
		R2=0;
		
		#20; 
		select=3;		//SUB
		R3=6;
		R2=4;
		
		#20; 
		select=4;		//OR
		R3=15;
		R2=10;
		
		#20; 
		select=5;		//and
		R3=15;
		R2=10;
		
		#20; 
		select=6;		//SLI R2 is bigger (same sign - positive/negative)
		R2=15;
		R3=10;
		
		#20; 
		select=6;		//SLI R2 is bigger (same sign - positive/negative)
		R2=-1;
		R3=-5;
		
		#20; 
		select=6;		//SLI R2 is smaller (same sign - positive/negative))
		R2=5;
		R3=1;
		
		#20; 
		select=6;		//SLI R2 is smaller (same sign - positive/negative))
		R2=-5;
		R3=-1;

		#20; 
		select=6;		//SLI R2 = R3 (both negative/positive/0)))
		R2=0;
		R3=0;
		
		#20; 
		select=6;		//SLI R2 = R3 (both negative/positive/0)))
		R2=1;
		R3=1;
		
		#20; 
		select=6;		//SLI R2 = R3 (both negative/positive/0)))
		R2=-1;
		R3=-1;
		
		#20; 
		select=6;		//SLI (R2-negative & R3-positive) / (R2-positive & R3-negative)
		R2=-1;
		R3=5;
		
		#20; 
		select=6;		//SLI (R2-negative & R3-positive) / (R2-positive & R3-negative)
		R2=1;
		R3=-1;
		
		#20; 
		select=6;		//SLI R2 = 0 & R3 - positive/negative
		R2=0;
		R3=-1;
		
		#20; 
		select=6;		//SLI R2 = 0 & R3 - positive/negative)
		R2=0;
		R3=1;
		
		
		#20; 
		select=6;		//SLI R2 = positive/negative & R3 = 0)
		R2=1;
		R3=0;
		
		#20;
		select=6;		//SLI R2 = positive/negative & R3 = 0)
		R2=-1;
		R3=0;
	
	
	end
	


	always
	#5 clk=~clk;
	
	

	
endmodule

