module tb;
  reg [31:0]a,b ;
  wire [31:0] sum ;


  top_module (a,b,sum);


  initial
    begin
  a = 6 ; b = 7 ;
  #2 a =7 ,b= 17 ;
  #5 a=6 , b= 16;
    end
endmodule 

