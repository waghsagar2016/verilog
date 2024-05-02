`timescale 1ns / 1ps
module half_adder(ip1,ip2,sum,carry);
  input ip1,ip2;
  output sum,carry;
  assign sum=ip1^ip2;
  assign carry=ip1&ip2;
endmodule