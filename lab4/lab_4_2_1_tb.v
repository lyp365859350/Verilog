`timescale 1ns / 1ps

module sim2();
    reg[3:0] a,b;
    wire[4:0] sum;
    add_two_values adder(.a(a), .b(b), .sum(sum)); 
    
    initial 
    begin
        a = 4'b1011;
        b = 4'b0101;
        $display("a=%d, b=%d, a+b=%d",a,b,sum);
    end
endmodule
