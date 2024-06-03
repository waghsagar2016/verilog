`timescale 1ns / 1ps

module HS_GL(ip1,ip2,borrow,difference);

    input ip1,ip2;
    output borrow,difference;
    wire ip;
    not n1(ip,ip1);
    and a1(borrow,ip,ip2);
    xor x1(difference,ip1,ip2);

endmodule