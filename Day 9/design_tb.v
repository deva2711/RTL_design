module tb;
  reg [31:0]a,b ;
  wire [31:0] sum ;


  top_module dut(a,b,sum);


  initial
    begin
    a = 6 ; b = 7 ;
  #5 a =7 ;b= 17 ;
  #5 a=6 ; b= 16;
  #50 $finish;
    end
  
  initial
  begin
    
    $monitor("x=%b y=%b C_in=%b  ",a,b,sum);
    $dumpfile("dump.vcd");
    $dumpvars ;
    
  end
  
endmodule 
