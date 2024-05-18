`timescale 1ns / 1ps

module FA_DF(ip1,ip2,ip3,carry,sum);

    input ip1,ip2,ip3;
    output carry,sum;
    assign carry=((ip1&ip2)| (ip2&ip3) |(ip3&ip1));
    assign sum =ip1^ip2^ip3;
    
endmodule