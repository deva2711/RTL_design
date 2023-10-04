/****************************************************
Developer    : Devang vekariya
Module       : full adder using behavioral modeling 
Institute    : NIT Kurukshetra
Date created : 04/10/2023
********************************************************/

// full adder module
module full_adder(x,y,c_in,sum_f,carry_f);
  input x, y,c_in;
  output reg sum_f,carry_f;
  
  //behavioral modeling 
  always @(*)
    begin
      {carry_f ,sum_f} = x + y + c_in ;
    end 
  
endmodule
