// testbench for the bcd  to binary converter

module bcd_to_binary_tb;
  // set up veriable
  reg [7:0] bcd;
  wire [3:0] binary ;
  // instantiation of design module
  bcd_to_binary dut(bcd, binary);
  
  
  initial 
    begin 
      bcd = 0;
      $monitor (" bcd = %b  binary = %b  decibal = %d" , bcd , binary ,binary );
      $dumpfile("dump.vcd"); 
      $dumpvars;
      #100 $finish;
      
    end 
   
  always 
    begin
      #5 bcd = bcd + 1  ;
    end 
  
endmodule 
