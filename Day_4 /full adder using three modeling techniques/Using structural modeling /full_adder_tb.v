// testbench for full adder
module full_adder_tb;
  
  // set up veriable
  reg x,y,c_in;
  wire sum_f,carry_f ;
  
  // instantiation of design module
  full_adder dut(x,y,c_in,sum_f,carry_f);
      initial
	begin
      x = 0 ; y = 0 ; c_in= 0 ;
      $monitor("x=%b y=%b C_in=%b sum =%b carry=%b ",x,y,c_in,sum_f,carry_f);
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
      c_in = $random;
    end
    
endmodule 
