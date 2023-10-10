/****************************************************
Developer    : Devang vekariya
Module       : half subtractor 
Institute    : NIT Kurukshetra
Date created : 05/10/2023
********************************************************/

// full adder module
module half_sub(x,y,diff,borrow);
  input x, y;
  output diff,borrow;
  
  assign diff = x ^ y;
  assign borrow = ~x && y ;
  
endmodule
