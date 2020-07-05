module tb;
  logic x;    
  bit y;       
 
  initial begin
    #5 x = 1'bx;
    #50 x = 1'b1;
            
  end
  
  initial begin
    $monitor ("time=%d, x=%b, y=%b", $time, x, y);
  
  end
    
  assign y = x;  
  
endmodule
