/****************************************************
Developer    : Devang vekariya
Module       : bcd to excess3 code converter 
Institute    : NIT Kurukshetra
Date created : 03/10/2023
********************************************************/

module bcd_to_excess3 (in ,out);    //module defined 
   
   // input & output port declarations
  input [3:0] in ;
  output reg [3:0] out ;

  always @(*)
    begin
      if (in >4'b1001 )         // if input is greater then 9 it will  
        begin                   // give output z
        out = 4'bzzzz;
      end 
      else  
        begin
        out = in + 4'b0011 ;       // else it will add 3 in the input 
        end 
        
    end
endmodule 
