`timescale 1ns / 1ps
/*
author: albelt
*/

module lab_4_1_1(a,b,sum,carry);

    input wire[3:0] a,b;
    output reg[3:0] sum;
    output reg carry;
    
    task add_two_values_task();
        input wire[3:0] a;
        input wire[3:0] b;
        output reg[3:0] sum;
        output reg carry;
        
        begin
            if (a+b <= 4'b1111)
                begin
                    carry = 0;
                    sum = a + b;
                end
            else
                begin
                    carry = 1;
                    sum = a + b - 4'b1111;
                end
        end
        
    endtask

    always @(a,b)
        add_two_values_task(a,b,sum,carry);

endmodule
