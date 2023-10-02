/****************************************************
Developer    : Devang vekariya
Module       : All basics gate in gate level modeling 
Institute    : NIT KKR
Date created : 01/10/2023
********************************************************/
// All basic gate  module definition using gate level modeling 
module gates_gate_level (a,b,
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
  
  
  and a1(out_and,a,b);
  or a2(out_or,a,b);
  not a3(out_not,a);
  nand a4(out_nand,a,b);
  nor a5(out_nor,a,b);
  xor a6(out_xor,a,b);
  xnor a7(out_xnor,a,b);
  
endmodule 
