/****************************************************
Developer    : Devang vekariya
Module       : full  subtractor 
Institute    : NIT Kurukshetra
Date created : 04/10/2023
********************************************************/

// module created 
module full_sub (x,y,bin,diff,borrow);
  
  // defined input and output 
  input x,y,bin;
  output diff,borrow;
  
  
  // Data flow modeling 
  assign diff = x ^ y ^ bin ;
  assign borrow = (~x &&  bin) || (~ x && y ) || ( y && bin) ;
  
endmodule 
