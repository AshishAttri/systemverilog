//this is a 8-bit adder design in SV
module adder(input logic [7:0] a,
             input logic [7:0] b,
             input logic cin,
             output logic [7:0] sum,
             output logic cout );
  logic [8:0] addition;
  
  assign addition = a + b + cin;
  assign sum = addition [7:0];
  assign cout = addition [8];
  
endmodule
