/****************************************************
Developer    : Devang vekariya
Module       : half adder using behavioral modeling
Institute    : NIT Kurukshetra
Date created : 04/10/2023
********************************************************/


module half_add(a,b,sum,cout);   // module declaration
  // input & output port declarations
  input a,b;
  output reg sum,cout;
  
// behavioral modeling
  
  always @(*)
    begin
      {cout,sum} = a + b ;
    
    end 
  
endmodule 
