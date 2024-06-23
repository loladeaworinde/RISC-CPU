module MUX_C(
    input [31:0] PC_updated,
    input [31:0] BrA,
    input [31:0] RAA,
    input [1:0] MC,
    output reg [31:0] next_PC
    );
    
    always @(*)
    case(MC)
    2'b00: next_PC = PC_updated;
    2'b01: next_PC = BrA;
    2'b10: next_PC = RAA;
    2'b11: next_PC = BrA;
    endcase
endmodule