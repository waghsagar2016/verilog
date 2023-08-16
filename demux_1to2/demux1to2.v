// Basic logic gates
module AND_GATE(input A, input B, output Z);
    assign Z = A & B;
endmodule

module OR_GATE(input A, input B, output Z);
    assign Z = A | B;
endmodule

module NOT_GATE(input A, output Z);
    assign Z = ~A;
endmodule


// 1-to-2 Demultiplexer
module demux1to2 (out, in, sel);
    
    input in;
    input sel;
    output [1:0]out;
    
    wire sel_NOT;
   
    NOT_GATE Sel_inverter(.A(sel), .Z(sel_NOT));
    AND_GATE Y0_logic(.A(in), .B(sel_NOT), .Z(out[0]));
    AND_GATE Y1_logic(.A(in), .B(sel), .Z(out[1]));
endmodule
