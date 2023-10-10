/****************************************************
Developer    : Devang vekariya
Module       : mux 2:1 using conditional operator 
Institute    : NIT Kurukshetra
Date created : 06/10/2023
********************************************************/

module mux2x1(in,sel,out);
  
  // defined input and output 
  input [1:0] in;
  input sel;
  output out;
  
         // if sel = 0 it it gives input is first bit output
         // otherwise it will give input second bit 
         
         assign out = sel  ?  in[1] : in[0] ; 
         
         endmodule 
