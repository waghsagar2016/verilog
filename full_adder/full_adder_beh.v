`timescale 1ns / 1ps

module fa_bl(ip1,ip2,ip3,carry,sum);

    input ip1,ip2,ip3;
    output carry,sum;
    reg ca,su;
    
    always @(ip1,ip2,ip3)begin
    
        case({ip1,ip2,ip3})
            3'b000: {ca,su} = 2'b00 ;
            3'b001: {ca,su} = 2'b01 ;
            3'b010: {ca,su} = 2'b01 ;
            3'b011: {ca,su} = 2'b10 ;
            3'b100: {ca,su} = 2'b01 ;
            3'b101: {ca,su} = 2'b10 ;
            3'b110: {ca,su} = 2'b10 ;
            3'b111: {ca,su} = 2'b11 ;
            default : {ca,su} = 2'b00;
        endcase
   
    end
    
    assign carry = ca;
    assign sum = su;

endmodule