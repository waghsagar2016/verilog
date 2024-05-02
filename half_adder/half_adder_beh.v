`timescale 1ns / 1ps
module half_Adder_bl(ip1,ip2,carry,sum);
    input ip1,ip2;
    output carry,sum;
    reg ca=1'b0;
    reg su=1'b0;
    
    always@(ip1,ip2) begin
    
    if(ip1) begin
            if(ip2) begin
            ca = 1'b1;
            su = 1'b0; end
        else begin
            ca = 1'b0;
            su = 1'b1;
            end
        end
        
        else begin
            if(ip2) begin
            ca = 1'b0;
            su = 1'b1;
            end

        else begin
            ca = 1'b0 ;
            su = 1'b0;
            end
        end
    end
    
    assign sum = su;
    assign carry = ca;
endmodule