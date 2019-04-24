`timescale 1 ns / 1 ps
/*
author: albelt
task: 
*/


module lab_3_1_1(x,y);
    input wire[2:0] x;
    output reg[7:0] y;

    always @*
        begin
            case(x)
                3'b000: y = 8'b00000001;
                3'b001: y = 8'b00000010;
                3'b010: y = 8'b00000100;
                3'b011: y = 8'b00001000;
                3'b100: y = 8'b00010000;
                3'b101: y = 8'b00100000;
                3'b110: y = 8'b01000000;
                3'b111: y = 8'b10000000;
            endcase
        end

endmodule