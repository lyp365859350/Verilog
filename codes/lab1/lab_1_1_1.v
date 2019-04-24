`timescale 1ns / 1ps
/*
2-to-1 multiplexer using gate-level modeling
author: albelt
Input
            x: J15(switch)
            y:L16(switch)
            s: R13(switch)
Output
             m:H17(led)
*/


module lab_1_1_1(x,y,s,m);
    input x,y,s;                                 
    output m;                                   
    wire ns,sel_a,sel_b;
    
    not u1(ns,s);
    and u2(sel_a,y,s);
    and u3(sel_b,x,ns);
    or u4(m,sel_a,sel_b);
    
endmodule
