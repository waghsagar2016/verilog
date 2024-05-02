`timescale 1ns / 1ps
module ha_tb;
  reg a,b;
  wire s,c;
  
initial begin
  $monitor("ip=%b ip2=%b sum=%b carry=%b",a,b,s,c);
end
  
  half_adder uut(.ip1(a),.ip2(b),.sum(s),.carry(c));
  
initial begin
  a=0;b=0;
  #5 a=0; b=1;
  #5 a=1; b=0;
  #5 a=1;b=1;
  #5 $finish;
end

//enabling the wave dump
initial begin 
  $dumpfile("dump.vcd"); $dumpvars;
end
  
endmodule