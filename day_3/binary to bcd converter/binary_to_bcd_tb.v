// testbench for the binary to bcd converter

module binary_to_bcd_tb;
  // set up veriable
  reg [7:0] in;
  wire [11:0] bcd_out ;
  // instantiation of design module
  binary_to_bcd dut(in,bcd_out);
  
  
  initial 
    begin 
      in = 0;
      $monitor (" in = %d  bcd_out = %b " , in ,bcd_out );
      $dumpfile("dump.vcd"); 
      $dumpvars;
      #200 $finish;
      
    end 
  // given input using random 
  always 
    begin
      #5 in = $random  ;
    end 
  
endmodule 
