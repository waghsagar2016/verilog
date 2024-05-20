`timescale 1ns / 1ps

module testbench();

    reg ip1,ip2;
    wire borrow,difference;
    HS_DF hs(ip1,ip2,borrow,difference);

    initial begin
        $monitor("ip1=%b ip2=%b borrow=%b difference=%b",ip1,ip2,borrow,difference);
        ip1=0; ip2=0;
        #2 ip1=0; ip2=1;
        #2 ip1=1; ip2=0;
        #2 ip1=1; ip2=1;
        #2 $finish;
    end

    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end

endmodule