/****************************************************
Developer    : Devang vekariya
Module       : binary to gray code converter 
Institute    : NIT Kurukshetra
Date created : 02/10/2023
********************************************************/


//  module definition of B2G converter
module gray_to_binary(gray,binary);
  
  // parameter definition 
parameter size = 8 ;
  
  // input & output port declarations
  input [size-1 : 0]gray ;          // gray input 
  output [size-1 : 0] binary ; 
  
  
  
  // used genvar loop
  //The syntax for a generate loop is similar to that of a for loop statement.
 genvar i;
 
    for (i= 0 ; i <= size-1 ; i= i+1 )
      begin 
        assign binary[i] =  ^ gray [size-1 : i] ; // bitwise xor operator 
        // e.g. binary[0] = gray[3] ^ gray[2] ^ gray[1] ^ gray[0];
        //      binary[1] = gray[3] ^ gray[2] ^ gray[1];
        //      binary[2] = gray[3] ^ gray[2];
        //      binary[3] = gray[3];
      end

  
  
endmodule 
