`timescale 1ns / 1ps
module testbench();
    wire carry,sum;
    reg ip1,ip2;
    half_Adder_bl h(ip1,ip2,sum,carry);
initial begin
    $monitor("ip1=%b | ip2=%b | carry=%b | sum=%b",ip1,ip2,carry,sum);
end
    initial begin
    ip1=0; ip2=0;
    #2 ip1=0; ip2=1;
    #2 ip1=1; ip2=0;
    #2 ip1=1; ip2=1;
    #2 $finish;
    end

//enabling the wave dump
initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
end
  
endmodule