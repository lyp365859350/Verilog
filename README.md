## Verilog  FPGA硬件设计入门

### 简介

现场可编程门阵列（FPGA）不同于ASIC芯片，它是一个半成品集成电路，允许开发者进行无限次数的电路改写，大大降低了电子产品原型开发周期和成本．

Verilog是用于设计FPGA电路的一门语言，可以用类C语言风格编写电路设计代码，然后使用FPGA厂商提供的工具链进行综合，仿真，模拟，最后生成可以在FPGA上面运行的电路．



### 环境

目标机：Xilinx NEXYS 4 DDR (XC7A100T-CSG324)

工具链：Vivado 2019 (用于编写代码，综合，仿真，模拟)

宿主机：64位  Windows 或 Linux，推荐i5以上处理器，内存8G以上



### 资源介绍

1. Xilinx官方开发板说明书，电路图，示例实验

   [Nexys使用说明书](resourses/Nexys4 User Manaual.pdf )

   [Nexys内部接口说明](resourses/Nexys4 Circuit.pdf)

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

4. [个人学习笔记](resourses/notes.pdf)



### 代码介绍

1. [Neys4 DDR约束文件编写参考](Nexys4DDR_Master.xdc)
2. [实例实验代码-共14个](codes)
3. [coding技巧及避坑提示](tricks.md)



### 代码引用说明

```
代码仅供学习和参考，不保证正确性；
代码可以随便使用，没有版权；
有问题欢迎在 Issues　里面提.
```



