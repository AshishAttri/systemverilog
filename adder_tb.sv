//8-bit adder testbench

module adder_tb;
  logic [7:0] a;
  logic [7:0] b;
  logic cin;
  logic [7:0] sum;
  logic cout;
  
  //instantiation of adder module 
  adder a1( .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout) );
  
  initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0,adder_tb);
    
    $monitor ("time=%d , a=%b , b=%b , cin=%b , sum=%b , cout=%b ", $time, a, b, cin, sum, cout );
    
    a=8'b0000_1111;b=8'b0000_1100;cin=1'b1;
    #10 a=8'b0000_0011;b=8'b0000_1001;cin=1'b0;
    #10 a=8'b0000_0110;b=8'b0000_0101;cin=1'b1;
    #10 a=8'b1111_0011;b=8'b0100_1001;cin=1'b0;
    #10 a=8'b0100_1011;b=8'b1100_1001;cin=1'b0;
    #10 a=8'b0110_0011;b=8'b1000_1001;cin=1'b1;
    #10 $display("test complete");
    $finish;
  end
 
endmodule
