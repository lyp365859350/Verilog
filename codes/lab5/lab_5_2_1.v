`timescale 1 ns / 1 ps

module D_ff(D,Q,CLK);
input wire D;
input wire CLK;
output wire Q;
    
    always @(posedge CLK)
    begin
      Q <= D;
    end

endmodule