`timescale 1ns / 1ps

module HS_DF(ip1,ip2,borrow,difference);

    input ip1,ip2;
    output borrow,difference;
    assign borrow = ip1 ^ ip2;
    assign difference = (~ip1) & ip2;

endmodule