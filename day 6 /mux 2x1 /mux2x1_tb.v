// testbench of the 2x1 mux 

// module defined 

module mux2x1_tb;
  
  
  // set up veriable
  reg [1:0] in;
  reg sel ;
  wire out;
  
  // instantiation of design module
  mux2x1 dut (in,sel,out);
  
  
  initial 
    begin
      in = 2'b00 ; 
      $monitor ("in = %b  sel = %b  out = %b" ,in, sel , out );
      $dumpfile("dump.vcd");
      $dumpvars ;
      #50 $finish ;
    end 
    // given input using random
  always begin 
    
    #5 in = $random ; sel = $random ;
  end 
  
endmodule 
  
