module CPU_8bit (
    input wire clk,
    input wire rst,
    input wire [7:0] instruction,
    output reg [7:0] output_data
);

    reg [7:0] accumulator;
    reg [7:0] program_counter;

    wire [3:0] opcode;
    wire [3:0] operand;

    assign opcode = instruction[7:4];
    assign operand = instruction[3:0];

    reg [7:0] alu_result;

    always @(*) begin
        case (opcode)
            4'b0000: alu_result = {4'b0000, operand};  // Load
            4'b0001: alu_result = accumulator + {4'b0000, operand};  // Add
            4'b0010: alu_result = accumulator - {4'b0000, operand};  // Subtract
            4'b0011: alu_result = accumulator & {4'b0000, operand};  // AND
            4'b0100: alu_result = accumulator | {4'b0000, operand};  // OR
            4'b0101: alu_result = accumulator ^ {4'b0000, operand};  // XOR
            default: alu_result = accumulator;
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            accumulator <= 8'b0;
            program_counter <= 8'b0;
        end else begin
            accumulator <= alu_result;
            program_counter <= program_counter + 1;
        end
    end

    always @(*) begin
        output_data = accumulator;
    end

endmodule