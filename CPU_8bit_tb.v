`include "CPU_8bit.v"

module CPU_8bit_tb;
    reg clk;
    reg rst;
    reg [7:0] instruction;
    wire [7:0] output_data;

    CPU_8bit uut (
        .clk(clk),
        .rst(rst),
        .instruction(instruction),
        .output_data(output_data)
    );

    initial begin
        $dumpfile("CPU_8bit.vcd");
        $dumpvars(0, CPU_8bit_tb);
        
        clk = 0;
        rst = 1;
        instruction = 8'b0;
        
        #10 rst = 0;
        
        #10 instruction = 8'b00001010; // Load 10
        #10 instruction = 8'b00010011; // Add 3
        #10 instruction = 8'b00100001; // Subtract 1
        #10 instruction = 8'b00110101; // AND with 5
        #10 instruction = 8'b01000011; // OR with 3
        #10 instruction = 8'b01010001; // XOR with 1
        
        #10 $finish;
    end

    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t rst=%b instruction=%b output=%b", 
                 $time, rst, instruction, output_data);
    end
endmodule