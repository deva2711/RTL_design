/****************************************************
Developer    : Devang vekariya
Module       : mux 4x1 using case statement  
Institute    : NIT Kurukshetra
Date created : 06/10/2023
********************************************************/

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
          
