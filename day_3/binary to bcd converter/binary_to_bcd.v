/****************************************************
Developer    : Devang vekariya
Module       : binary to bcd converter
Institute    : NIT Kurukshetra
Date created : 03/10/2023
********************************************************/

module binary_to_bcd (in ,bcd_out);    //module defined 
   
   // input & output port declarations
  input [7:0] in ;
  output [11:0] bcd_out ;

  reg [3:0]hunderds,tens,ones;
  reg [6:0] temp ;
  
  always @(*)
    begin
      
      hunderds = in / 100 ;
      temp     = in % 100 ;          // separating all the hunderds, 
      tens     = temp / 10;          // tens and ones digit
      ones     = temp % 10 ;
      
    end
  assign bcd_out = {hunderds , tens , ones} ;
endmodule 
