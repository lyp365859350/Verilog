`timescale 1 ns / 1 ps

module tb();
    reg[1:0] in;
    wire out;
    reg clk;
    reg reset;

    lab_10_2_1 fsm(.in(in),.out(out),.clk(clk),.reset(reset));
    
    always #10 clk = ~clk;

    initial 
        begin
          #10 reset = 1'b1;
          #10 reset = 1'b0;
          #10 clk = 1'b0;
        forever
            begin
                #10  in = 2'b00;
                #10  in = 2'b01;
                #10  in = 2'b00;
                #10  in = 2'b11;
                #10  in = 2'b00;
                #10  in = 2'b10;
                #10  in = 2'b00;
            end
        end

endmodule