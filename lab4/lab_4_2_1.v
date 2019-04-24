`timescale 1ns / 1ps

module add_two_values(a,b,sum);
    input wire[3:0] a,b;
    output wire[4:0] sum;
    
    function [4:0] add_two_values_func;
       input wire[3:0] a,b;
       reg[4:0] c;
       begin
            c = a + b;
            add_two_values_func = c;
       end
    endfunction
    
     assign sum = add_two_values_func(a,b);
   
    
endmodule
