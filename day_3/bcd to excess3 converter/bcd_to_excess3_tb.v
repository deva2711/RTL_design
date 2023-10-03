// testbench for the binary to excess3 converter

module excess_tb;
  // set up veriable
  reg [3:0] in;
  wire [3:0] out ;
  // instantiation of design module
  bcd_to_excess3 dut(in,out);
  
  
  initial 
    begin 
      in = 4'b0000;
      $monitor (" in = %b  out = %b " , in ,out );
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
