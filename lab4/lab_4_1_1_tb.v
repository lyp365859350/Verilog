`timescale 1ns / 1ps

module sim1();
    reg[3:0] a,b;
    wire [3:0] sum;
    wire carry;
    
    lab_4_1_1 adder(.a(a), .b(b), .sum(sum), .carry(carry));
    
    initial
    begin
        a = 4'b0001;
        b = 4'b0010;
        $display("a=%d, b=%d, sum=%d, carry=%d", a,b,sum,carry);
    end
    
    
endmodule
