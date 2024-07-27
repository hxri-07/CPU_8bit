Overview
This project focuses on the design, implementation, and simulation of a basic 8-bit Central Processing Unit (CPU) using Verilog Hardware Description Language (HDL). The project aims to provide an educational insight into the fundamental workings of a CPU, showcasing key concepts of digital logic and computer architecture. The CPU is designed with a simplified instruction set architecture (ISA) that allows it to perform essential operations such as data loading, arithmetic computations (addition and subtraction), and logical operations (AND, OR, XOR).

Project Components
1. Verilog Module
The core of this project is a Verilog module that encapsulates the CPU's architecture and functionality. This module includes:

Instruction Fetch and Decode: The module is designed to fetch instructions from memory, decode them, and execute the appropriate operations. The instruction set is simple yet sufficient to demonstrate fundamental CPU operations.
Arithmetic Logic Unit (ALU): The ALU performs all arithmetic and logical operations. It supports basic operations like addition, subtraction, AND, OR, and XOR.
Control Unit: The control unit manages the flow of instructions and data within the CPU, ensuring proper sequencing of operations.

2. Testbench
To verify the functionality of the CPU, a comprehensive testbench is provided. The testbench includes various test cases that cover all possible operations and scenarios, ensuring that the CPU behaves as expected under different conditions. The testbench also helps identify and debug any issues in the design.

3. Simulation
Simulation is a crucial part of this project, allowing us to verify the functionality and performance of the CPU design. We use Icarus Verilog, an open-source Verilog simulation and synthesis tool, for functional verification. The simulation process helps us validate the design by comparing the expected and actual outputs for various test cases.

4. Waveform Analysis
To gain deeper insights into the CPU's operation, we use GTKWave, a waveform viewer for electronic signals. GTKWave allows us to visualize the CPU's behavior over time, providing a detailed view of signal changes and timing. This visualization is instrumental in understanding the sequence of operations, debugging, and optimizing the design.

Educational Value
This project serves as an educational tool for students and enthusiasts interested in digital logic design and computer architecture. It covers fundamental concepts such as:

Instruction Decoding: Understanding how a CPU interprets and executes instructions.
ALU Operations: Exploring basic arithmetic and logical functions within a processor.
Control Flow: Learning how a control unit orchestrates the various components of the CPU to perform tasks in a coordinated manner.
Through this project, users can observe how a CPU processes instructions cycle by cycle, executes various operations, and produces output. This hands-on experience provides valuable insights into the inner workings of a simple processor and lays the groundwork for more complex digital design projects in the future.

Getting Started
To get started with this project, you will need:

Icarus Verilog: For simulating the Verilog design.
GTKWave: For viewing waveforms and analyzing the CPU's behavior.

For instructions on how to download the above, you can watch this YouTube video: https://www.youtube.com/watch?v=vN1wzM0NO4c

I have shared the mainfile and the testbench. To run, open up the terminal in the testbench file and put the following codes:
>> iverilog -o <testbench filename>.vvp <testbench filename>.v
>> vvp <testbench filename>.vvp

The testbench code also contains commands to create a VCD (Value Change Dump) file. To showcase the waveforms, input gtkwave into the terminal and hit enter. 
In the application, open the vcd file (File->Open New->Select vcd file). Select all the variables and click insert to show the waveforms.
