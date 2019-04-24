module lab5_1_2(R, S, E,Q,Qbar);
    input wire R,S,E;
    output reg Q,Qbar;
    
    always @ *
    if(E)
        begin
            Q = ~(R | Qbar);
            Qbar = ~(S | R);
        end
    
endmodule
