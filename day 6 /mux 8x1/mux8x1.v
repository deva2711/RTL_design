/****************************************************
Developer    : Devang vekariya
Module       : mux 8x1 using 4x1mux and 2x1mux 
Institute    : NIT Kurukshetra
Date created : 06/10/2023
********************************************************/


///////////////////////////////////////////////////////////
//first 4x1 module defined 
module mux4x1(in,sel,out);
  
  // defined input and output 
  input [3:0] in;
  input [1:0]sel;
  output reg out;
  // 4x1 mux using case 
  always @(*)
    begin
      
      case (sel)
        
        2'b00 : out = in[0];
        2'b01 : out = in[1];
        2'b10 : out = in[2];
        2'b11 : out = in[3];
        default :out = 1'bx;
        
      endcase 
      
    end 
endmodule
module mux2x1(in,sel,out);
  
  
////////////////////////////////////////////////////////////////
  // 2x1 mux defined 
  // defined input and output 
  input [1:0] in;
  input sel;
  output out;
  
         // if sel = 0 it it gives input is first bit output
         // otherwise it will give input second bit 
         
         assign out = sel  ?  in[1] : in[0] ; 
         
         endmodule 

///////////////////////////////////////////////////////////
          
module mux8x1(in,sel,out);
  
  // defined top module 
  // defined input and output 
  input [7:0] in;
  input [2:0]sel;
  output out;
  
  wire [1:0]w ;
  //instantiating 4x1 and 2x1 
  
  mux4x1 f1(in[3:0],sel[1:0],w[0]);
  mux4x1 f2(in[7:4],sel[1:0],w[1]);
  mux2x1 f3(w,sel[2],out);
    
endmodule 
          
////////////////////////////////////////////////////////
