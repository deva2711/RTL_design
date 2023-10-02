// module  testbench 
 
module gates_tb();
  
  // set up veriable
  reg a,b ;
  wire  out_and , out_or,out_not,out_nor,out_nand,out_xor,out_xnor ;
  
  // instantiation of design module
  gate_data_flow dut(a,b,
                       out_and,
                      out_or,
                      out_not,
                      out_nand,
                      out_nor,
                      out_xor,
                     out_xnor);
  
  // given inputs 
initial 
  begin 
     a = 0 ; b = 0;
     #5 a = 0 ; b = 1;
     #5 a = 1 ; b = 0;
     #5 a = 1 ; b = 1;
    #5;
  end
  
  initial 
  begin
    $dumpfile ("dump.vcd");
    $dumpvars ;
    
  end 
endmodule
  