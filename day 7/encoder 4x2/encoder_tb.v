// testbench of encoder 4x2

module encoder4x2_tb;
  
  
  // set up veriable 
  reg [3:0]in;
  wire [1:0]out ;
  
  //instantiation of decoder module 
  encoder4x2 dut(in,out);
  
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
      #5 in = 4'b0001;
      #5 in = 4'b0010;
      #5 in = 4'b0100;
      #5 in = 4'b1000;
      
      
    end 
endmodule 
  
