# 8-bit CPU Design and Simulation in Verilog

## Project Overview

This project presents the design, implementation, and simulation of a basic 8-bit Central Processing Unit (CPU) using Verilog Hardware Description Language. The goal is to demonstrate fundamental concepts of computer architecture and digital logic design through a simplified yet functional CPU model.

## Features

- 8-bit data path
- Simple instruction set architecture
- Basic arithmetic and logical operations
- Modular Verilog design
- Comprehensive testbench for verification
- Waveform generation for visual analysis

## CPU Architecture

The CPU implements a minimal instruction set, capable of performing the following operations:
- Load immediate value
- Addition
- Subtraction
- Logical AND
- Logical OR
- Logical XOR

Key components of the CPU include:
1. Arithmetic Logic Unit (ALU)
2. Accumulator register
3. Instruction decoder
4. Program counter

## Implementation Details

- The CPU is described in Verilog HDL, showcasing hardware description techniques.
- A testbench is provided to verify the functionality of each instruction.
- The design is synthesizable, allowing for potential FPGA implementation.

## Simulation and Verification

The project utilizes:
- Icarus Verilog for compilation and simulation
- GTKWave for waveform visualization and analysis

The simulation demonstrates the CPU's ability to:
1. Fetch instructions
2. Decode and execute operations
3. Update the accumulator with operation results
4. Increment the program counter

## Educational Value

This project serves as an excellent learning tool for:
- Understanding basic CPU architecture
- Exploring digital logic design principles
- Practicing Verilog HDL
- Gaining experience with EDA tools and simulation techniques

## Future Enhancements

Potential areas for expansion include:
- Implementing a more complex instruction set
- Adding memory interfaces
- Developing a simple assembler
- Exploring pipelining concepts

## Getting Started

To get started with this project, you will need:

Icarus Verilog: For simulating the Verilog design.
GTKWave: For viewing waveforms and analyzing the CPU's behavior.

For instructions on how to download the above, you can watch this YouTube video: https://www.youtube.com/watch?v=vN1wzM0NO4c

I have shared the mainfile and the testbench. To run, open up the terminal in the testbench file and put the following codes:
>> iverilog -o <testbench_filename>.vvp <testbench_filename>.v

>> vvp <testbench_filename>.vvp

The testbench code also contains commands to create a VCD (Value Change Dump) file. To showcase the waveforms, input gtkwave into the terminal and hit enter. 
In the application, open the vcd file (File->Open New->Select vcd file). Select all the variables and click insert to show the waveforms.
