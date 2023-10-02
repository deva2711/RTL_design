/****************************************************
Developer    : Devang vekariya
Module       : All basics gate in Data flow modeling 
Institute    : NIT Kurukshetra
Date created : 01/10/2023
********************************************************/





// All basic gate  module definition using behaviral modeling
module gate_behavioral (a,b,
                       out_and,
                      out_or,
                      out_not,
                      out_nand,
                      out_nor,
                      out_xor,
                      out_xnor);
  // input & output port declarations
  input a,b ;
  output reg out_and , out_or,out_not,out_nor,out_nand,out_xor,out_xnor ;
  
  
  // behavioral modeling
  always @(*)
    begin
      
  out_and = a & b ;
  out_or = a | b ;
  out_not = ~a ;
  out_nand = ~(a & b) ;
  out_nor = ~(a | b) ;
  out_xor = a ^ b ;
  out_xnor = a ~^ b ;
  
    end 
endmodule 
  
