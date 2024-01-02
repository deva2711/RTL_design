module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel,w4,w5;
  wire [15:0] w2,w3;
    add16 a1 (a[15:0], b[15:0],1'b0 ,sum[15:0],sel);
  add16 a2 (a[31:16], b[31:16],1'b0,w2,w4);
  add16 a3 (a[31:16], b[31:16],1'b1,w3,w5);
    
    assign sum[31:16] = sel ? w3 : w2  ;
    
endmodule

module add16(a,b,cin,sum,carry);
  input [15:0] a,b;
  output reg [15:0] sum;
  input cin;
  output reg carry;
  
  always @(*)
    begin
      
      {carry,sum} =  a + b + cin ;
      
    end
  
  
endmodule 
