`timescale 1 ns / 1 ps
/*
author: albelt
task: Mealy Finite State Machine
notes: 好难啊，嘤嘤嘤...
*/

module lab_10_1_1 (in,out,clk,reset,led);
    input wire in;      //输入信号
    input wire clk;     //时钟信号，用按键模拟时钟
    input wire reset;   //复位信号
    output reg out;     //输出信号
    output reg[3:0] led; //led计数器指示灯

    //定义状态空间,一共16种情况
    parameter s0 = 4'b0000;
    parameter s1 = 4'b0001;
    parameter s2 = 4'b0010;
    parameter s3 = 4'b0011;
    parameter s4 = 4'b0100;
    parameter s5 = 4'b0101;
    parameter s6 = 4'b0110;
    parameter s7 = 4'b0111;
    parameter s8 = 4'b1000;
    parameter s9 = 4'b1001;
    parameter s10 = 4'b1010;
    parameter s11 = 4'b1011;
    parameter s12 = 4'b1100;
    parameter s13 = 4'b1101;
    parameter s14 = 4'b1110;
    parameter s15 = 4'b1111;

    //定义当前状态和下一个状态的寄存器
    reg[3:0] current_state;
    reg[3:0] next_state;

    //状态跳转，由时钟上升沿或者复位下降沿触发
    //时序逻辑，使用非阻塞赋值
    always @(posedge clk or negedge reset)
        if(reset)
                current_state <= s0;
        else
                current_state <= next_state;

    //根据当前状态和输入判断下一个状态
    //组合逻辑，使用阻塞赋值
    always @(in or current_state)
        begin
          if(in)
            begin
                case(current_state)
                    s0: next_state = s1;
                    s1: next_state = s2;
                    s2: next_state = s3;
                    s3: next_state = s4;
                    s4: next_state = s5;
                    s5: next_state = s6;
                    s6: next_state = s7;
                    s7: next_state = s8;
                    s8: next_state = s9;
                    s9: next_state = s10;
                    s10: next_state = s11;
                    s11: next_state = s12;
                    s12: next_state = s13;
                    s13: next_state = s14;
                    s14: next_state = s15;
                    s15: next_state = s0;
                endcase          
            end
        end

    //Mealy 状态机，根据输入reset和当前状态决定输出
    //组合逻辑，使用阻塞赋值
    always @(current_state or reset)
        begin
            if(reset)//由reset得到的0不算数
                out = 1'b0;
            else
                begin
                    if(current_state %3 ==0)
                        out = 1'b1;
                    else
                        out = 1'b0;
                end
        end
    
    //将当前状态赋值给led并输出
    always @(current_state)
        assign led = current_state;
        
endmodule