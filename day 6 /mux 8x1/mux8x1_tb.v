// testbench of the 8x1 mux 

// module defined 
module mux8x1_tb;
  
  
  // set up veriable
  reg [7:0] in ;
  reg [2:0] sel ;
  wire out;
  
  // instantiation of design module
  mux8x1 dut (in,sel,out);
  
  
  initial 
    begin
      in = 8'b00000000 ;  
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
  
