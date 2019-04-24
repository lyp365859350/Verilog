`timescale 1 ns / 1 ps

module lab_6_1_2(D,Clk,Reset,Set,Load,Q);
    input wire[3:0] D;       //sw3,sw2,sw1,sw0
    input wire Clk;          //swt15
    input wire Reset;        //swt4
    input wire Set;          //sw5
    input wire Load;         //sw6
    output reg[3:0] Q;       //led3,led2,led1,led0

    always @(posedge Clk)
        if(Reset)
          begin
            Q <= 4'b0000;
          end
        else
            begin
                if(Set)
                    Q <= 4'b1100;
                else
                    begin
                        if(Load)
                            Q <= D;
                    end
            end

endmodule 