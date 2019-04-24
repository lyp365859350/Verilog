`timescale 1 ns / 1 ps

module lab_6_1_1(D,Clk,Reset,Load,Q);
    input wire[3:0] D;
    input wire Clk;
    input wire Reset;
    input wire Load;
    output reg[3:0] Q;

    always @(posedge Clk)
        if(Reset)
          begin
            Q <= 4'b0;
          end
        else if(Load)
          begin
              Q <= D;
          end
        
endmodule 