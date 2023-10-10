// testbench of the 4x1 mux 

// module defined 

module mux4x1_tb;
  
  
  // set up veriable
  reg [3:0] in ;
  reg [1:0] sel ;
  wire out;
  
  // instantiation of design module
  mux4x1 dut (in,sel,out);
  
  
  initial 
    begin
      in = 4'b0000 ;  
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
  
