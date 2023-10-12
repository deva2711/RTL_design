/****************************************************
Developer    : Devang vekariya
Module       : encoder 8x3 
Institute    : NIT Kurukshetra
Date created : 07/10/2023
********************************************************/

//module created of encoder 8x3
module encoder8x3(in, out );
  
  // input defined 
  input [7:0]in;
  output reg [2:0]out;
  
  //behavioral modeling 
  always @(*)
    begin
      
      // using case 
      case (in)
        8'b0000_0001 : out = 3'b000;
        8'b0000_0010 : out = 3'b001;
        8'b0000_0100 : out = 3'b010;
        8'b0000_1000 : out = 3'b011;
        8'b0001_0000 : out = 3'b100;
        8'b0010_0000 : out = 3'b101;
        8'b0100_0000 : out = 3'b110;
        8'b1000_0000 : out = 3'b111;
        default      : out = 3'bzzz;

      endcase 
      
    end 
endmodule
