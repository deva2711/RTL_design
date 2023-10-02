/****************************************************
Developer    : Devang vekariya
Module       : All basics gate in Data flow modeling 
Institute    : NIT KKR
Date created : 01/10/2023
********************************************************/





// All basic gate  module definition using Data flow modeling
module gate_data_flow (a,b,
                       out_and,
                      out_or,
                      out_not,
                      out_nand,
                      out_nor,
                      out_xor,
                      out_xnor);
  // input & output port declarations
  input a,b ;
  output out_and , out_or,out_not,out_nor,out_nand,out_xor,out_xnor ;
  
  
  // Data flow modeling 
  assign out_and = a & b ;
  assign out_or = a | b ;
  assign out_not = ~a ;
  assign out_nand = ~(a & b) ;
  assign out_nor = ~(a | b) ;
  assign out_xor = a ^ b ;
  assign out_xnor = a ~^ b ;
  
endmodule