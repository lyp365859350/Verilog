`timescale 1 ns / 1 ps
/* 
author: albelt
task: 

*/

module lab_3_1_2(x,g,y);
    input wire[2:0] x;
    input wire[2:0] g;
    output reg[7:0] y;

    always @*
        begin
            case(g)
                3'b0xx: y = 8'b11111111;
                3'bx1x: y = 8'b11111111;
                3'bxx1: y = 8'b11111111;
                3'b100: 
                    begin
                        lab_3_1_1(.x(x),.y(y));
                        y = ~y;
                    end
            endcase
        end
 
endmodule