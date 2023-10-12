// testbench of decoder 5x32

module decoder5x32_tb;
  
  
  // set up veriable 
  reg [4:0]in;
  wire [31:0]out ;
  reg en ;
  
  //instantiation of encoder module 
  decoder5x32 dut(en,in,out);
  
  initial 
    begin
      
      in = 0; en = 0;
      #5 en = 1;
      $monitor("en =%b in = %b out = %b " , en ,in ,out );
      $dumpfile("dump.vcd");
      $dumpvars;
      #400 $finish ;
    end 
  
  always 
    begin
     #10 in = $random ;
      
      
    end 
endmodule 
  
