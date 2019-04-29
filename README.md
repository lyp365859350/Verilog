## Verilog  FPGA硬件设计入门

### 简介

==123==
**１．模拟电路和数字电路**

模拟电路处理的是模拟信号：在时间和数量上的变化是连续的，如温度；

数字电路处理的是数字信号：在时间和数量上的变化是离散的，如人数；

大规模和超大规模集成电路都是数字电路

**２．什么是可编程逻辑器件**

早期生产的数字集成电路逻辑功能是不能改变的，比如一个单片机制作完成以后，想要再加一个串口上去是不可能实现的；

后来发展出了允许用户自信修改内部连接的集成电路：`可编程逻辑器件（Programmable Logic Device）`，PLD内部的电路结构可以通过编程来改变；

常见的PLD有复杂可编程逻辑器件（CPLD）和现场可编程门阵列（FPGA），CPLD是基于＂乘积项＂的与或逻辑阵列，FPGA是基于＂查找表＂的CLB阵列．

**３．什么是FPGA**

现场可编程门阵列（FPGA）是一种可以通过编程来修改逻辑值的数字集成电路（芯片），不同于ASIC芯片，它是一个半成品集成电路，允许开发者进行无限次数的电路改写，大大降低了电子产品原型开发周期和成本．

**４．FPGA与CPU的区别**

对CPU的编程并不改变内部的连接结构，只是告诉CPU需要执行哪些指令；而FPGA编程是通过改变硬件电路的连接方式来完成任务的．CPU需要进行取指，译码，执行的过程，这个过程是串行的；FPGA是并行的，处理速度比CPU快得多．

**５．什么是Verilog**

Verilog是用于设计FPGA电路的一门语言，可以用类C语言风格编写电路设计代码，然后使用FPGA厂商提供的工具链进行综合，仿真，模拟，最后生成可以在FPGA上面运行的电路．

**Verilog与C的区别**

Verilog是硬件描述语言，在综合实现下载到FPGA上后，会生成电路；C语言是软件编程语言，编译链接下载到单片机上后，是存储器中的一系列指令．

**6．FPGA开发流程**

- 逻辑设计

  ```
  使用硬件描述语言(HDL)在不同的层次对数字电路的结构，功能和行为进行描述
  ```

- 电路实现

  ```
  通过综合工具，将HDL所描述的电路转换为门级电路网表，然后将其与某种工艺的基本原件一一对应起来，最后通过布局布线工具转换为电路布线借结构
  ```

- 系统验证

  ```
  使用仿真工具或者现场调试工具进行功能和正确性的验证
  ```

  

### 开发环境

目标机：Xilinx NEXYS 4 DDR (XC7A100T-CSG324)

宿主机：64位  Windows 或 Linux，推荐处理器i5以上，内存8G以上

工具链：Vivado 2019 (用于编写代码，综合，仿真，模拟)



### 资源介绍

1. Xilinx官方开发板说明书，电路图，示例实验

   [Nexys使用说明书](resourses/Nexys4UserManaual.pdf )

   [Nexys内部接口说明](resourses/Nexys4Circuit.pdf)

   [实验１](resourses/lab1.pdf)

   [实验２](resourses/lab2.pdf)

   [实验３](resourses/lab3.pdf)

   [实验４](resourses/lab4.pdf)

   [实验５](resourses/lab5.pdf)

   [实验６](resourses/lab6.pdf)

   [实验７](resourses/lab7.pdf)

   [实验８](resourses/lab8.pdf)

   [实验９](resourses/lab9.pdf)

   [实验１０](resourses/lab10.pdf)

   [实验１１](resourses/lab11.pdf)

2. 推荐入门教程

   [Xilinx Vivado使用入门](<http://www.paincker.com/category/hacker/embedded/pld>)

3. 推荐入门视频

   [正点原子开拓者FPGA开发板视频-bilibili](<https://www.bilibili.com/video/av46679537>)

   [小明教IC 一天学会Verilog - bilibili](<https://www.bilibili.com/video/av10522456>)

4. 学习笔记

   [Verilog个人学习笔记](Notes.md)



### 代码介绍

1. [Neys4 DDR约束文件编写参考](Nexys4DDR_Master.xdc)
2. [实例实验代码和注释-共14个](codes)





