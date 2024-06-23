module InstructionFetch(
    input clk,
    input reset,
    input [31:0] next_PC,
    output reg [31:0] PC,
    output reg [31:0] PC_updated,
    output reg [31:0] IR

);
    wire [31:0] instruction;
    reg [31:0] instruction_memory[0:255]; 


initial begin
        $readmemb("divide.mem", instruction_memory);
    end
    
    assign instruction = instruction_memory[PC[31:0]]; // Read the instruction from memory
    
always @(negedge clk) begin
    if (reset) begin
        PC <= 0;
        IR <= 0;
        PC_updated <= 0;
    end else begin
         PC <= next_PC;
         PC_updated = next_PC + 1;
         IR <= instruction;
    end
end

endmodule
