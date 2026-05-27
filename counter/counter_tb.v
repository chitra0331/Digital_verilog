// Code your testbench here
// or browse Examples
module counter_tb;
  reg clk;
  reg rst;
  wire [3:0]count;

  counter dut(.clk(clk),.rst(rst),.count(count));
              always #5 clk<=~clk;
              initial 
                begin
                  clk<=0;
                  rst<=1;
                      $dumpfile("counter_tb.vcd");
                  $dumpvars(0, counter_tb);
             	                                         	  #5;
                 rst<=0;
                  #100;
              
               
                                     
 $finish;
  end 
   endmodule
                  
                  
                  
              
