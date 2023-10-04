/****************************************************
Developer    : Devang vekariya
Module       : half adder using gate level modeling
Institute    : NIT Kurukshetra
Date created : 04/10/2023
********************************************************/


module half_add(a,b,sum,cout);   // module declaration
  // input & output port declarations
  input a,b;
  output sum,cout;
  
 // gate modeling  
  xor (sum,a,b);
  and (cout,a,b);
  
endmodule 
