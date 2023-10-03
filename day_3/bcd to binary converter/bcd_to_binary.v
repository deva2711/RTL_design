/****************************************************
Developer    : Devang vekariya
Module       : bcd to binary converter
Institute    : NIT Kurukshetra
Date created : 03/10/2023
********************************************************/

// module created
module bcd_to_binary(input [7:0]bcd,
output reg[3:0]binary);

  always@(*)
begin
if(bcd[3:0]<4'b1010)
begin
  if(bcd[7:4] == 4'b0000)
     binary=bcd[3:0];
  else if((bcd[7:5]== 3'b000 )&&(bcd[4]==1'b1))
    binary=bcd[3:0]+4'b1010;
end
else
binary=4'bxxxx;

end
endmodule
