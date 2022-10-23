# Verilog 项目模版

## 前置条件

安装这些工具：

- 软件：VS Code、icarus-verilog、GTKWave、GNUMake。
- VS Code 插件：Makefile Tools、Verilog-HDL/SystemVerilog/Bluespec SystemVerilog。

然后确保 GTKWave 的可执行二进制文件在 `PATH` 环境变量。若不知道要如何查看或修改环境变量，请自行上网查阅相关资料。如果使用 macOS 或者 GNU/Linux 的话，这一步**可能**不是必须的，亦不需要安装 GNUMake。

## 项目结构

- `module.v`：一个示例模块。
- `module.tb.v`：示例模块对应的 testbench。
- `Makefile`：描述如何构建项目的文件，**强烈建议**学习 Makefile 相关的基础语法，方便后续修改这个文件。

## 基础使用方法

- 构建并仿真测试默认模块（将会自动打开 GTKWave 显示波形）：在项目的根目录下运行指令 `make` 即可，记得在查看完波形后退出 GTKWave。
- 清理构建产物：在项目的根目录下运行指令 `make clean`。

如需构建并仿真特定的模块（以 `example.v` 这个模块文件为例）：
1. 确保 testbench 名称为 `example.tb.v`。
2. 运行指令 `TARGET=example make`。

如需更多的使用方法请自行修改 `Makefile` 文件。

## 技术支持

不提供任何的技术支持，如遇到问题或者要适应自身的需求请自行解决。如遇到 bug 请反馈到 [Issues](https://github.com/rewired-gh/verilog-project-template/issues) 中。