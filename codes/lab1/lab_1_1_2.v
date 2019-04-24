`timescale 1ns / 1ps
/*
 two-bit wide 2-to-1 multiplexer using gate-level modeling
 author: albelt
 Input
            x[1:0]:  J15,L16 (switch)
            y[1:0]: M13,R15 (switch)
            s: R13(switch)
Output
            m[1:0]: H17,K15(led)
*/


module lab_1_1_2(x,y,s,m);
    input wire[1:0] x;
    input wire[1:0] y;
    input wire s;
    output wire[1:0] m;
    
    wire ns;
    wire[1:0] sel_a;
    wire[1:0] sel_b;
    
    not u0(ns,s);
    and u11(sel_a[0],x[0],ns);
    and u21(sel_a[1],x[1],ns);
    and u12(sel_b[0],y[0],s);
    and u22(sel_b[1],y[1],s);
    or u31(m[0],sel_a[0],sel_b[0]);
    or u32(m[1],sel_a[1],sel_b[1]);
    
endmodule
