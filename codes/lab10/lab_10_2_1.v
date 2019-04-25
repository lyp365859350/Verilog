`timescale 1 ns / 1 ps

module lab_10_2_1(in,out,clk,reset);
    input wire[1:0] in;             //输入信号
    input wire clk;                 //时钟信号，用开关模拟
    input wire reset;               //复位信号
    output reg out = 1'b0;          //输出信号


    //定义状态空间
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;

    //定义当前状态和下一个状态的寄存器
    reg[1:0] current_state;
    reg[1:0] next_state;

    //状态跳转，时序逻辑
    always @(posedge clk or negedge reset)
        begin
            if(reset)
                current_state <= s0;
            else
                current_state <= next_state;
        end

    //下一个状态判断，组合逻辑
    always @(in)
        next_state = in;

    //各个状态下的动作，组合逻辑
    always @(current_state or next_state)
        begin
            case(current_state)
                s1: 
                    if(next_state == s0)
                        out = 1'b0;
                s3:
                    if(next_state == s0)
                        out = 1'b1;
                s2:
                    if(next_state == s0)
                        out = ~out;
            endcase
        end


endmodule