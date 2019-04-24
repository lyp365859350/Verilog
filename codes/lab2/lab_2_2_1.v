`timescale 1ns / 1ps
/*
author: albelt
task: Output 4-bit binary input onto one LED (most significant bit) and the right
most 7-segment display (least significant digit) after converting them into
two-digit decimal equivalent (BCD). Use only dataflow modeling.
*/


module lab_2_2_1(swt, led, seg, an);
    input wire[3:0] swt;
    output reg led;
    output reg[6:0] seg;
    output wire[7:0] an;
    
    assign an = 8'b11111110;
    always @*
        begin
            case(swt)
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
                
                4'b1010: seg[6:0] = 7'b0000001;
                4'b1011: seg[6:0] = 7'b1001111;
                4'b1100: seg[6:0] = 7'b0010010;
                4'b1101: seg[6:0] = 7'b0000110;
                4'b1110: seg[6:0] = 7'b1001100;
                4'b1111: seg[6:0] = 7'b0100100;
            endcase
        end
        
     always @*
        begin
            if (swt >= 4'b1010) 
                led = 1;
             else
                led = 0;
        end
    
endmodule
