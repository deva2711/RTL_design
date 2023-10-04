/****************************************************
Developer    : Devang vekariya
Module       : full adder using structural modeling
Institute    : NIT Kurukshetra
Date created : 04/10/2023
********************************************************/

// half adder module
module half_add(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  assign sum = a ^ b ;
  assign carry = a & b ;
  
endmodule 

// full adder module
// half adder instantiated into  full adder 
module full_adder(x,y,c_in,sum_f,carry_f);
  input x, y,c_in;
  output sum_f,carry_f;
  wire  w1,w2,w3;
  half_add h1(x,y,w1,w2);
  half_add h2(w1,c_in,sum_f,w3);
  
  assign carry_f = w3 || w2 ;

endmodule
