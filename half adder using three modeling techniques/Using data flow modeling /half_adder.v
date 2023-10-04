/****************************************************
Developer    : Devang vekariya
Module       : half adder using data flow modeling 
Institute    : NIT Kurukshetra
Date created : 04/10/2023
********************************************************/


module half_add(a,b,sum,cout);   // module declaration
  // input & output port declarations
  input a,b;
  output sum,cout;
  
  // data flow modeling 
  assign  sum  = a  ^  b;
  assign  cout = a  &  b;
  
endmodule    
