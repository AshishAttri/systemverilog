module logic_type;
  tri data;
  logic first;
  logic second;
  logic sel;
  
  assign data = sel ? first : 1'bz;
  assign data = (~sel) ? second : 1'bz;
   
  
  initial begin
    $monitor("time=%d, data=%b, sel=%b, first=%b, second=%b", $time, 				data, sel, first, second);
    
    $dumpfile("logic_type.vcd");
    $dumpvars;
    
  end
  
  initial begin
    #10 first=1'b0;second=1'b0;sel=1'b0; 
    #10 first=1'b0;second=1'b1; sel=1'b1; 
    #10 first=1'b1;second=1'b0; sel=1'b1; 
    #10 first=1'b1;second=1'b1; sel=1'b0; 
    #50 $finish;
    
  end
  
endmodule
