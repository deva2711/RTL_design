// testbench of encoder 8x3

module encoder8x3_tb;
  
  
  // set up veriable 
  reg [7:0]in;
  wire [2:0]out ;
  
  //instantiation of encoder module 
  encoder8x3 dut(in,out);
  
  initial 
    begin
      
      in = 0;
      $monitor("in = %b out = %b " , in ,out );
      $dumpfile("dump.vcd");
      $dumpvars;
      #100 $finish ;
    end 
  
  always 
    begin
      #5 in = 8'b0000_0001;
      #5 in = 8'b0000_0010;
      #5 in = 8'b0000_0100;
      #5 in = 8'b0000_1000;
      #5 in = 8'b0001_0000;
      #5 in = 8'b0010_0000;
      #5 in = 8'b0100_0000;
      #5 in = 8'b1000_0000;
      
    end 
endmodule 
  
