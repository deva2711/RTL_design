/****************************************************
Developer    : Devang vekariya
Module       : decoder 5x32
Institute    : NIT Kurukshetra
Date created : 07/10/2023
********************************************************/

module decoder5x32(en,in,out);
  
  input en ;
  input [4:0] in ;
  output reg [31:0] out ;
  
  //used behavioral modeling
  
  always @(*)
    begin
      out = 32'hffffffff;
      if (en==1)
        out[in] = 1'b0;
    
     else 
       out =32'hffffffff;
    end
endmodule 
