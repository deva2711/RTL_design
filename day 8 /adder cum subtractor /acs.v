/****************************************************
Developer    : Devang vekariya
Module       : Adder cum subtractor 
Institute    : NIT Kurukshetra
Date created : 08/10/2023
********************************************************/

//////////////////////////////////////////////////
//module for the 1 bit adder

module full_adder (a,b,cin,sum,cout);
  
  input a,b,cin;
  output reg sum,cout;
  
  always @(*) begin 
    {cout,sum} = a + b + cin;          // full adder 
  end 
  
endmodule 

/////////////////////////////////////////////////

//// adder cum subtarctor module is defined 
// top module defined 
module adder_cum_sub(a,b,sel,out,cout_or_borrow);
  
  input [3:0] a,b;
  input sel ;
  output [3:0] out;
  output cout_or_borrow;
  
  wire [3:0] w1;
  wire c1,c2,c3,c4;
  
  
  //  second input bit is xor with sel bit 
  // to select adding or subtraction wants to perform
  assign w1 = b ^ {4{sel}} ;
  
  
  //  full adder is instantiated 
  full_adder f1(a[0],w1[0],sel,out[0],c1);
  full_adder f2(a[1],w1[1],c1,out[1],c2);
  full_adder f3(a[2],w1[2],c2,out[2],c3);
  full_adder f4(a[3],w1[3],c3,out[3],c4);
  
  assign cout_or_borrow = c4 ;
  
endmodule
  
