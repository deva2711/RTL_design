// testbench for full subtractor 
module full_sub_tb;
  
  // set up veriable
  reg x,y,bin;
  wire diff,borrow ;
  
  // instantiation of design module
  full_sub dut(x,y,bin,diff,borrow);
      initial
	begin
      x = 0 ; y = 0 ; bin = 0 ;
      $monitor("x=%b y=%b  bin = %b  diff =%b borrow=%b ",x,y,bin ,diff,borrow);
      $dumpfile("dump.vcd"); 
      $dumpvars;
	#200 $finish;
	end
    // given input using random
  always 
    begin 
      #5;
      x = $random;
      y = $random;
      bin = $random ;
      
    end
    
endmodule 
