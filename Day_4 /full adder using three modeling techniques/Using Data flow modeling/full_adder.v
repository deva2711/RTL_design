/****************************************************
Developer    : Devang vekariya
Module       : full adder using data flow
Institute    : NIT Kurukshetra
Date created : 04/10/2023
********************************************************/

// full adder module
module full_adder(x,y,c_in,sum_f,carry_f);
  input x, y,c_in;
  output sum_f,carry_f;
  
  assign sum_f =  x ^ y ^ c_in ;
  assign carry_f =  (x && y ) ||  (c_in &&  (x ^ y ));
  
endmodule
