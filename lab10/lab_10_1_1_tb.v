`timescale 1ns / 1ps

module fuck1hard( );
    reg in;
    wire out;
    reg clk;
    reg reset;
    wire[3:0] led;
    lab_10_1_1 fsm(.in(in),.out(out),.clk(clk),.reset(reset),.led(led));
    
    always #10 clk = ~clk;
    
    initial
        begin
            #10 in = 1;
            #10 clk = 0;
            #10 reset = 1;//先让系统初始化
            #10 reset = 0;
        end
endmodule
