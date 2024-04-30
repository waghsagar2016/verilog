`timescale 1ns / 1ps
module ha_gl(ip1,ip2,sum,carry);
input ip1,ip2;
output sum,carry;
and a1(carry,ip1,ip2);
xor x1(sum,ip1,ip2);
endmodule