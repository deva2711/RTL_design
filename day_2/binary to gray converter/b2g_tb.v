// testbench of b2g converter

// module created
module b2g_tb;
  
  // set up veriable
  reg [7:0]a;
  wire [7:0] gray ;
  
  
  binary_to_gray dut(a,gray);
      
  // instantiation of design module
  initial
	begin
      a = 8'b00000000 ;
      $monitor ("a =%b , gray = %b " , a, gray);
      $dumpfile("dump.vcd"); 
      $dumpvars;
	#200 $finish;
	end
  
  // given input using random 
  always 
    begin 
      #5;
      a = $random;
     
    end
    
endmodule 
