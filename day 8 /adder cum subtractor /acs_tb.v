// testbench 

module adder_cum_subtractor;
  
  // setup veriable
  reg [3:0]a,b;
  reg sel ;
  wire [3:0] out ;
  wire cout_or_borrow ;
  
  // design module is instantiated 
  adder_cum_sub dut(a,b,sel,out,cout_or_borrow);
  
  // defined input and dump files
  initial
  begin
    a = 0 ; b=0 ; sel = 0 ;
    $monitor ("a =%d b= %d sel = %b out = %d cout or borrow =%b",a,b,sel,out,cout_or_borrow);
    $dumpfile("dump.vcd");
    $dumpvars ;
    
    #300 $finish ;
    
  end 
  
  always 
    begin
      #5 a= $random;
         b = $random;
         sel = $random ;
      
    end
  
endmodule 
