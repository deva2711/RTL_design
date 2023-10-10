// testbench for half subractor
module half_sub_tb;
  
  // set up veriable
  reg x,y;
  wire diff,borrow ;
  
  // instantiation of design module
  half_sub dut(x,y,diff,borrow);
      initial
	begin
      x = 0 ; y = 0 ; 
      $monitor("x=%b y=%b  diff =%b borrow=%b ",x,y,diff,borrow);
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
      
    end
    
endmodule 
