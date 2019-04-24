`timescale 1ns / 1ps

module lab_5_1_1(S,R,Q,Qbar);

    input wire S,R;
    output reg Q,Qbar;
    
    always @ *
        begin
             Q = ~(R | Qbar);
             Qbar = ~(S | Q);
        end

        
endmodule

/*
问题：综合与实现通过，但是生成bit文件失败
原因：这个实验是生成锁存器，但是实际开发需要避免生成锁存器，所以默认状态下锁存器是被Vivado禁止的
解决方案：在setting->Bitstream->tcl.pre里面添加一个自己写的1.tcl文件
1.tcl文件内容为: set_property SEVERITY {Warning} [get_drc_checks LUTLP-1]
*/