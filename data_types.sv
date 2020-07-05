module data_types();
  
  //data types 
  integer a;
  real b;
  time c;
  
  bit [7:0] e ;
  byte f;
  shortint s;
  int i;
  longint l;
  shortreal sr; 
  
  
  initial begin
    a=7;
    $display("a=%d",a);
    $display("a=%b",a);
    $display("a=%o",a);
    $display("a=%h",a);
   
    b=5.23;
    $display("b=%d",b);
    $display("b=%f",b);
    $display("b=%0.4f",b);
    
    #10;
    c=$time;
    $display("c=%d",c);  
    
    e=8'b11110000;
    $display("e=%0b",e);
    
    f=8'b1111_0000;
    $display("f=%0b",f);
    
    s=500;
    $display("s=%0b",s);
    
    i=251;
    $display("i=%d",i);
    $display("i=%0b",i);
    
    l=459392499024;
    $display("l=%0d",l);
    $display("l=%0b",l);
    
    sr=339.59204;
    $display("decimal value of sr =%d",sr);
    $display("sr in binary =%b",sr);
    $display("floating value of sr =%0.12f",sr);
    $display("hex value of sr =%0h",sr);
    
    $finish;
  end
  
endmodule
   
