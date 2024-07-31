# 8-bit CPU Design and Simulation in Verilog

## Project Overview

This is still an on-going project. It presents the design, implementation, and simulation of a basic 8-bit Central Processing Unit (CPU) using Verilog Hardware Description Language. The goal is to demonstrate fundamental concepts of computer architecture and digital logic design through a simplified yet functional CPU model.

## Features

- 8-bit data path
- Simple instruction set architecture
- Basic arithmetic and logical operations
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

## Getting Started

1. Compile the Verilog files using your preferred simulator (e.g., Icarus Verilog)
2. Run the simulation to generate the VCD file
3. Open the VCD file in GTKWave to visualize the waveforms
