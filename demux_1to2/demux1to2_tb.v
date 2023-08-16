// Testbench
module testbench;
    reg A, Sel;
  wire [1:0]out;
    
  demux1to2 demux(.in(A), .sel(Sel), .out(out));
    
    initial begin
      $monitor("A = %b, Sel = %b, out[0] = %b, out[1] = %b", A, Sel, out[0], out[1]);
        
        // Test case 1
        A = 1; Sel = 0; #10;
        
        // Test case 2
        A = 0; Sel = 1; #10;
        
        // Test case 3
        A = 1; Sel = 1; #10;
      
      // Test case 4
        A = 0; Sel = 0; #10;
        
        // End simulation
        $finish;
    end
endmodule
