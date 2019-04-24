`timescale 1 ns / 1 ps

module lab_1_2_1(x,y,clk,reset);
    input wire x;
    input wire clk;
    input wire reset;
    output reg y;

    reg curr_state,next_state;

    always @(posedge clk)
        begin
            if(reset)
                curr_state = 1'b0;
            else
                curr_state = next_state;
        end

    always @(x or curr_state)
        case(curr_state)
            1'b0: 
                begin
                    y = 0;
                    if(x)
                        next_state = 1;
                    else
                        next_state = 0;
                end
            1'b1:
                begin
                  if(x)
                    begin
                      next_state = 1;
                      y = 1;
                    end
                  else
                    begin
                      next_state = 0;
                      y = 0;
                    end
                end
endmodule