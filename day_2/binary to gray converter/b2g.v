/****************************************************
Developer    : Devang vekariya
Module       : binary to gray code converter 
Institute    : NIT Kurukshetra
Date created : 02/10/2023
********************************************************/


//  module definition of B2G converter
module binary_to_gray(a,gray);
  
  // parameter definition 
parameter size = 8 ;
  
  // input & output port declarations
  input [size-1 : 0]a ;          // binary input 
  output reg [size-1 : 0] gray ; 
  
  
  // behavioral modeling 
  
  always @(*)
    begin
      gray = a  ^ (a >> 1) ;  // a xor with a shifted with 	1 bit right side 
    end
  
endmodule 
