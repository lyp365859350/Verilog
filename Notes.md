**1.逻辑值**

０：表示低电平，对应电路的GND；\
１：表示高电平，对应电路的VCC；\
Ｘ：表示未知，可能为1可能为0；\
Ｚ：表示高阻态，外部没有激励信号，悬空状态；


**2.进制**

二进制，如4'b1100 表示位宽为4的二进制数字1100；\
十进制，如4'b2，表示位宽为4的十进制数字2;\
十六进制，如4'ha，表示位宽为4的十六进制数字a；\
Verilog默认为32位宽10进制数，可以在数字中加入下划线增加代码可读性比如：16'b1001_1110_0010_0001


**3.标识符**

用于定义模块名、端口名、信号名等；\
是字母、数字、$ 和 _ 的组合，第一个字符不能是数字或$；\
大小写敏感；


**4.时序逻辑和组合逻辑**

根据逻辑功能把数字电路分为`组合逻辑电路`和`时序逻辑电路`。\
组合逻辑电路中，任意时刻的输出只取决于该时刻的输入，与电路原来状态无关。\
时序逻辑电路中，任何时刻的输出不仅取决于当前的输入，还与电路原来的状态有关，即与之前的输入有关，因此时序逻辑必须具备记忆功能。



**5.数据类型**

*寄存器型*
>表示一个抽象的数据存储单元，关键字为`reg`，定义时不能赋值，默认初始值为x，例如：
```verilog
reg[3:0] cnt; //位宽为4的寄存器
reg x;        //位宽为1的寄存器
```
>`reg`类型的数据只能在`always`语句和`initial`语句中赋值，如果是时序逻辑，则该寄存对 应*触发器*，如果是组合逻辑，则该寄存器对应*硬件连线*

*线网型*
>表示结构实体之间的物理连线，有`wire`和`tri`两种，最常用的是`wire`类型，如：
```verilog
wire flag;  //位宽为1的wire变量
wire[15:0]  //位宽为16的wire变量
```
>线网类型变量不能存储值，它的值由驱动它的元件所决定，驱动线网类型变量的元件有逻辑门、连续赋值语句、assign等。\
如果没有驱动元件连接在线网类型的变量上，则该变量是高阻态(z)。

*参数型*
>参数类型在Verilog中表示一个常量，关键字为`parameter`，定义时必须赋值，如：
```verilog
parameter a = 4'b0001;
parameter b = 4'b0010;
parameter c = 4'b0100;
parameter d = 4'b1000;
```
>参数型数据通常用于定义数据位宽、状态机的状态、延迟大小等。


**6.常用运算符**

*算术运算符*
> +,-,*,/,%，注意Verilog只有整除 /

*关系运算符*
> <, >, <=, >=, ==, !=

*逻辑运算符*
> !, &&, ||

*条件运算符*
```verilog
result = (condition ? a : b);      //condition为１，返回a，否则返回b
```

*位运算符*
> ~, &, |, ^。若a&b中，a与b的位宽不一样，位宽较少的会自动在高位补0然后进行按位运算

*移位运算符*
```verilog
a << b;     //a左移b位
a >> b;     //a右移b位
```
> 移位运算使用0来填补移出的空位，左移时位宽增加，右移时位宽不变。例如：4'b1001 << 2 = 6'b100100, 4'b1001 >> 2 = 4'b0010。

*拼接运算符*
> 使用`{}`将几个变量拼接起来，作为一个新的信号，例如：
```verilog
c = {a[2:0],b[3:0]}      //将a的低3位和b的低4位进行拼接
```

**7.Verilog注释**

设计文件和仿真文件后缀为`.v`，注释写法跟C语言一样。约束文件后缀为`.xdc`，注释为`#`符号。

**8.常用关键字**

| 关键字 | 含义 |
| ----  | --- |
| module | 模块开始 |
| endmodule | 模块结束 |
| input | 输入端口定义 |
| ouput | 输出端口定义　|
| wire | wire信号定义　|
| reg | reg信号定义　|
| parameter | parameter信号定义 |
| begin | 语句块开始标志　|
| end | 语句块结束标志　|
| always | 循环语句　|
| assign | 赋值语句　|
| edge / posedge / negedge | 时钟边沿的标志　|
| case | case语句起始　|
| endcase | case语句结束 |
| default | case语句默认分支 |
| if / else | if / else语句　|
| for | for语句标志　|
| # | 延时标志 |


**9.Verilog程序框架**

Verilog的基本设计单元是“模块”(block)，一个模块包含４个部分：端口定义、I/O说明，内部信号声明和功能定义，例如：
```verilog
module func(a,b,c,d);   //模块名称和端口定义
    /* I/O说明 */
    input wire a,b;
    output wire c,d;

    /* 内部信号声明　*/
    reg[3:0] y;

    /* 功能定义　*/
    always @(a or b or c or d)
        begin
            y = {a,b,c,d};
        end

endmodule
```

**10.Verilog语句块**

*assign语句* 
> 描述组合逻辑，赋值语句

*always语句*
> 描述组合逻辑或时序逻辑，循环语句

*实例化元件语句*
```verilog
and u1(c,a,b);  //实例化一个与门
module_name example(.a(x),.b(y));   //实例化一个模块
```


**注意** 
> Verilog语句块内可能是并行也可能是串行，但是不同语句块之间是并行执行的，这是Verilog跟C语言最本质的差别，在Verilog中语句块的顺序不影响执行结果。


**11.模块的调用**
在Verilog中有一个`顶层模块`（类似Ｃ语言的main函数），顶层模块可以`调用`（也叫例化）其他模块、IP核（类似于库函数）等，例如：
```verilog
//file1.v
module time_count(clk,rst,flag);
    input clk,rst;
    output flag;
    //...
endmodule

//file2.v
module top_module(a,b,c,d);
    input a,b,c;
    output d;
    //例化一个time_count模块，注意模块的输出端口必须传入wire型变量
    time_count counter(.clk(a), .rst(b), .flag(c)); 
    //...

endmodule
```

可以通过下面的语法来强制改变被调用模块中非输入输出端口的值
```verilog
//file1.v
module time_count(clk,rst,flag);
    input clk,rst;
    output flag;
    parameter what = 4'b1000;
    //...
endmodule

//file2.v
module top_module(a,b,c,d);
    input a,b,c;
    output d;
    parameter WHAT = 4'b1111;
    //例化一个time_count模块，模块中what的值被强制修改成了4'b1111
    time_count #(.what WHAT) counter(.clk(a), .rst(b), .flag(c)); 
    //...

endmodule
```

**12.结构语句**

*initial语句块*
> 用于产生仿真测试信号（激励信号），只执行一次，可以用于对存储器赋初值，例如：
```verilog
initial 
    begin
        //使用非阻塞赋值
        sys_clk <= 1'b0;
        sys_rst <= 1'b0;
    end
```

*always语句块*
> 可以由时钟驱动或者电平驱动，死循环。
```verilog
//模拟周期为20ns的时钟信号（50Mhz）
always #10 sys_clk <= ~sys_clk;

//边沿触发，时序逻辑，非阻塞赋值
always @(posedge sys_clk or negedge sys_rst) //敏感列表
    begin
        if(sys_rst)
            counter <= 4'b0000;
        else
            counter <= a;
    end

//电平触发，组合逻辑，阻塞赋值
//如果敏感列表是语句块中等号右边所有变量，可以写成 @(*)
always @(a or b or c)
    begin
        out1 = a ? b : c;
        out2 = c ? a : b;
    end
```


**13.赋值方式**

- 阻塞赋值（blocking）\
在`always`语句块中，后面的赋值语句是在前面的语句结束后才开始的，使用`=`，例如：
```verilog
//时钟上升沿到达后，a,b,c的值都为0
always @(posedge clk or negedge rst)
    begin
        if(!rst)
            begin
                a = 2'b01;
                b = 2'b10;
                c = 2'b11;
            end
        else
            begin
                a = 2'b00;
                b = a;
                c = b;
            end
    end
```

- 非阻塞赋值（non-blocking）\
在赋值开始时，计算右边的值；在赋值结束时，同时更新左边的值，使用`<=`，例如：
```verilog
//时钟上升沿到达后，a的值变为0，b的值变为1，c的值变为2
always @(posedge clk or negedge rst)
    begin
        if(!rst)
            begin
                a <= 2'b01;
                b <= 2'b10;
                c <= 2'b11;
            end
        else
            begin
                a <= 2'b00;
                b <= a;
                c <= b;
            end
    end
```
非阻塞赋值只能对`reg`型变量进行赋值，因此只能在`initial`和`always`等过程块中使用。
在描述组合逻辑时（always敏感信号为电平信号）使用阻塞赋值，在描述时序逻辑时（always敏感信号为时钟信号）使用非阻塞赋值。不能在一个always块中同时使用阻塞赋值和非阻塞赋值，也不能在多个always中对同一个变量赋值。


**14.条件语句**

条件语句必须在过程块（initial或always引导的语句块）中使用。
```verilog
//if-else语句，表达式为1时判断为真，表达式为0,x或z时判断为假
if(表达式1)
    begin
    //...
    end
else if(表达式2)
    begin
    //...
    end
else
    begin
    //...
    end

//case语句
always @(posedge clk or negedge rst) begin
    if(!rst)
        led <= 8'b0000_0000;
    else begin
        case(num)   //控制表达式
            4'h0:   led <= 8'b1100_0000;
            4'h1:   led <= 8'b0100_1100;
            //...
            default:    seg <= 8'b1111_1111;
        endcase 
    end
end

//casez语句：比较时不用考虑z
//casex语句：比较时不用考虑x和z
```

