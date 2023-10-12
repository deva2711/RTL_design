/****************************************************
Developer    : Devang vekariya
Module       : encoder 4x2 
Institute    : NIT Kurukshetra
Date created : 07/10/2023
********************************************************/

//module created of encoder 4x2
module encoder4x2(in, out );
  
  // input defined 
  input [3:0]in;
  output reg [1:0]out;
  
  //behavioral modeling 
  always @(*)
    begin
      
      if (in== 4'b0001)
        out =2'b00;
      else if (in == 4'b0010)
        out =2'b01;
      else  if (in == 4'b0100)
        out =2'b10;
      else  if (in == 4'b1000)
        out =2'b11;
      else 
        out =2'bzz;
      
    end 
endmodule
