module condlogic(input logic clk, reset, 
        input  logic [3:0] Cond, 
        input  logic [3:0] ALUFlags, 
        input  logic [1:0] FlagW, 
        input  logic       PCS, RegW, MemW, 
        output logic       PCSrc, RegWrite, MemWrite);

    logic [1:0] FlagWrite; 
    logic [3:0] Flags; 
    logic CondEx;
    
    flopenr #(2)flagreg1(clk, reset, FlagWrite[1], ALUFlags[3:2], Flags[3:2]);
    flopenr #(2)flagreg0(clk, reset, FlagWrite[0], ALUFlags[1:0], Flags[1:0]);
    
    // write controls are conditional 
    condcheck cc(Cond, Flags, CondEx); 
    assign FlagWrite = FlagW & {2{CondEx}}; 
    assign RegWrite = RegW & CondEx; 
    assign MemWrite = MemW & CondEx; 
    assign PCSrc = PCS & CondEx; 
endmodule

module condcheck(input logic [3:0] Cond, 
        input logic [3:0] Flags, 
        output logic CondEx);
        
    logic neg, zero, carry, overflow, ge;
    assign {neg, zero, carry, overflow} = Flags; 
    assign ge = (neg == overflow);
    
    always_comb 
        case(Cond) 
        4'b0000: CondEx = zero; // EQ
        4'b0001: CondEx = ~zero; // NE
        4'b0010: CondEx = carry; // CS
        4'b0011: CondEx = ~carry; // CC 
        4'b0100: CondEx = neg; // MI
        4'b0101: CondEx = ~neg; // PL 
        4'b0110: CondEx = overflow; // VS
        4'b0111: CondEx = ~overflow; // VC 
        4'b1000: CondEx = carry & ~zero; // HI
        4'b1001: CondEx = ~(carry & ~zero); // LS
        4'b1010: CondEx = ge; // GE 
        4'b1011: CondEx = ~ge; // LT 
        4'b1100: CondEx = ~zero & ge; // GT
        4'b1101: CondEx = ~(~zero & ge); // LE 
        4'b1110: CondEx = 1'b1; // Always 
        default: CondEx = 1'bx; // undefined 
    endcase 
endmodule


module alu(
        input  logic [31:0] SrcA, SrcB,
        input  logic [1:0]  ALUControl, 
        output logic [31:0] ALUResult,
        output logic [3:0]  ALUFlags);
        
        logic [31:0] NewSrcB; 
        logic [32:0] Sum;
        logic Cout;        
        logic neg, zero, carry, overflow; // flags
        
        assign NewSrcB = ALUControl[0] ? ~SrcB : SrcB; 
        assign Sum = {1'b0, SrcA[31:0]} + {1'b0, NewSrcB[31:0]} + {31'b0, ALUControl[0:0]};
        assign Cout = Sum[32];
        
        always_comb
            begin
            case(ALUControl) 
                2'b11: ALUResult = SrcA | SrcB;
                2'b10: ALUResult = SrcA & SrcB;
                2'b01: ALUResult = Sum[31:0];
                2'b00: ALUResult = Sum[31:0];
                default: ALUResult = Sum[31:0];
            endcase
            end
        assign zero = (ALUResult == 0);
        assign neg = ALUResult[31];
        assign carry = (~ALUControl[1]) & Cout;
        assign overflow = (~(SrcA[31] ^ SrcB[31] ^ ALUControl[0])) & (SrcA[31] ^ Sum[31]) & (~ALUControl[1]);
        assign ALUFlags = { neg, zero, carry, overflow };

endmodule




module extend(input logic [23:0] Instr, 
        input logic [1:0] ImmSrc, 
        output logic [31:0] ExtImm);
        
    always_comb 
        case(ImmSrc) 
                    // 8-bit unsigned immediate 
            2'b00: ExtImm = {24'b0, Instr[7:0]}; 
                    // 12-bit unsigned immediate 
            2'b01: ExtImm = {20'b0, Instr[11:0]}; 
                    // 24-bit two's complement shifted branch
            2'b10: ExtImm = {{6{Instr[23]}}, Instr[23:0], 2'b00}; 
            default: ExtImm = 32'bx; // undefined 
        endcase 
endmodule


module adder #(parameter WIDTH=8) (
        input logic [WIDTH-1:0] a, b, 
        output logic [WIDTH-1:0] y);
    assign y = a + b;
endmodule



module flopr #(parameter WIDTH = 8) (input logic clk, reset, 
        input logic [WIDTH-1:0] d, 
        output logic [WIDTH-1:0] q);
        
    always_ff @(posedge clk, posedge reset) 
        if (reset) q <= 0; 
        else q <= d; 
endmodule


module flopenr #(parameter WIDTH = 8) (input logic clk, reset, en, 
            input logic [WIDTH-1:0] d, 
            output logic [WIDTH-1:0] q);
            
    always_ff @(posedge clk, posedge reset) 
        if (reset) q <= 0;
        else if (en) q <= d;
endmodule










