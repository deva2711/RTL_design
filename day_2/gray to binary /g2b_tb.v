// testbench of g2b converter

// module created 
module g2b_tb;
  
  // set up veriable
  reg [7:0]gray;
  wire [7:0] binary;
  
  
  gray_to_binary dut(gray,binary);
      
  // instantiation of design module
  initial
	begin
      gray = 8'b00000000 ;
      $monitor (" gray = %b  binary = %b " , gray , binary);
      $dumpfile("dump.vcd"); 
      $dumpvars;
	#200 $finish;
	end
  
  // given input using random 
  always 
    begin 
      #5;
      gray = $random;
     
    end
    
endmodule 
