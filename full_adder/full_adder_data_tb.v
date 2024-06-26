`timescale 1ns / 1ps

module testbench();

    reg ip1,ip2,ip3;
    wire carry,sum;
    FA_DF fa(ip1,ip2,ip3,sum,carry);
    
    initial begin
        $monitor("ip1=%b ip2=%b ip3=%b carry=%b sum=%b",ip1,ip2,ip3,carry,sum);
    end
   
    initial begin
        ip1=0; ip2=0; ip3=0;
        #2 ip1=0; ip2=0; ip3=1;
        #2 ip1=0; ip2=1; ip3=0;
        #2 ip1=0; ip2=1; ip3=1;
        #2 ip1=1; ip2=0; ip3=0;
        #2 ip1=1; ip2=0; ip3=1;
        #2 ip1=1; ip2=1; ip3=0;
        #2 ip1=1; ip2=1; ip3=1;
        #2 $finish;
    end

    initial begin 
        $dumpfile("dump.vcd"); $dumpvars;
    end
    
endmodule