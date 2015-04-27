//testbench of multiplier3x2
//時間相關設定
`timescale 1ns / 100ps

//include D.U.T.模組
`include "../../Source_code/multiplier3x2/multiplier3x2.v"

//時脈產生器半週期
//`define CLOCK_PERIOD_HALF 10

module multiplier3x2_testbench();
//宣告port類型
  reg [2:0]multiplicand;
  reg [1:0]multiplier;
  wire [4:0]product;

	//D.U.T. instantiation
	multiplier3x2 dut(product, multiplicand, multiplier);
	
  /* 時脈產生器
  always begin
    #`CLOCK_PERIOD_HALF Clk = !Clk;
	end
  */
  
  initial begin
		//初始化
		$dumpfile ("Simulation/multiplier3x2_testbench.vcd");
		$dumpvars;
		$display("\t\t時間\t積\t被乘數\t乘數");
		$monitor("%d\t%d\t%d\t%d", $time, product, multiplicand, multiplier);

		//模擬
		multiplicand = 0;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;
		
		#10
		multiplicand = 1;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;

		#10
		multiplicand = 2;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;

		#10
		multiplicand = 3;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;
		
		#10
		multiplicand = 4;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;

		#10
		multiplicand = 5;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;
		
		#10
		multiplicand = 6;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;
		
		#10
		multiplicand = 7;
		multiplier = 0;
		
		#10
		multiplier = 1;
		
		#10
		multiplier = 2;
		
		#10
		multiplier = 3;
		
		#10
		$finish;
	end
endmodule