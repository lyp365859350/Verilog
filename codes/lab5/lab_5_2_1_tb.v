`timescale 1 ns / 1 ps

module lab_5_2_1_tb();
    reg clk,d;
    wire q;
    lab_5_2_1(.D(d), .Q(q), .CLK(clk));

    initial
    begin
      clk = 1;
      d <= 0;
    end

    always #20 clk = ~clk;
    
endmodule