// test bench of half adder 

module half_add_tb;
  
  // set up veriable
  reg a ,b;
  wire sum,carry ;
  
  // instantiation of design module
  half_add dut (a,b,sum,carry);
  
  initial 
    begin
      a = 1'b0 ; b =1'b0;
      $monitor ("a = %b  b= %b sum = %b carry = %b" ,a,b,sum,carry);
      $dumpfile("dump.vcd");
      $dumpvars;
      #50 $finish ; 
    end
  // given input using random 
  always 
    begin
    #5  a= $random ; b = $random ;
    end 
endmodule 
