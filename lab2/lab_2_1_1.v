`timescale 1ns / 1ps
/*
author: albelt
task: Define a 4-bit number in the model and display it on the right most 7-
segment display

I/O ports:
    common anode
    ca,cb,cc,cd,ce,cf,cg
    
Input:
        SW3-SW0 to x[3:0]
Output:
        SEG0 to seg[6:0]
        pins P17, P18, N15, N16 to an3, an2, an1, an0
*/

//bcd to 7 segment dataflow
module lab_2_1_1(x,an,seg);
    input wire[3:0] x;
    output wire[7:0] an;
    output reg[6:0] seg;
    
    assign an = 8'b11111110;
    always @ *
        begin
            case(x)
                4'b0000: seg[6:0] = 7'b0000001;
                4'b0001: seg[6:0] = 7'b1001111;
                4'b0010: seg[6:0] = 7'b0010010;
                4'b0011: seg[6:0] = 7'b0000110;
                4'b0100: seg[6:0] = 7'b1001100;
                4'b0101: seg[6:0] = 7'b0100100;
                4'b0110: seg[6:0] = 7'b0100000;
                4'b0111: seg[6:0] = 7'b0001111;
                4'b1000: seg[6:0] = 7'b0000000;
                4'b1001: seg[6:0] = 7'b0000100;
                default:   seg[6:0] = 7'bxxxxxxxx;
            endcase
        end
    
    
endmodule
