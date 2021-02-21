module arm(input logic clk, reset, 
        output logic [31:0] PC,
        input  logic [31:0] Instr,
        output logic        MemWrite,
        output logic [31:0] ALUResult, WriteData,
        input  logic [31:0] ReadData);
    
    logic [3:0] ALUFlags; 
    logic RegWrite, ALUSrc, MemtoReg, PCSrc; 
    logic [1:0] RegSrc, ImmSrc, ALUControl;
    
    controller c(clk, reset, Instr[31:12], ALUFlags, 
        RegSrc, RegWrite, ImmSrc, 
        ALUSrc, ALUControl,
        MemWrite, MemtoReg, PCSrc); 
        
    datapath dp(clk, reset,
        RegSrc, RegWrite, ImmSrc,
        ALUSrc, ALUControl,
        MemtoReg, PCSrc,
        ALUFlags, PC, Instr,
        ALUResult, WriteData, ReadData); 
            
endmodule




module controller(input logic clk, reset, 
        input  logic [31:12] Instr, 
        input  logic [3:0]   ALUFlags, 
        output logic [1:0]   RegSrc, 
        output logic         RegWrite, 
        output logic [1:0]   ImmSrc, 
        output logic         ALUSrc, 
        output logic [1:0]   ALUControl, 
        output logic         MemWrite, MemtoReg, 
        output logic         PCSrc); 
        
    logic [1:0] FlagW; 
    logic PCS, RegW, MemW;
    
    decoder dec(Instr[27:26], Instr[25:20], Instr[15:12], 
        FlagW, PCS, RegW, MemW, 
        MemtoReg, ALUSrc, ImmSrc, RegSrc, ALUControl);
        
    condlogic cl(clk, reset, Instr[31:28], ALUFlags,
        FlagW, PCS, RegW, MemW,
        PCSrc, RegWrite, MemWrite); 
        
endmodule





module decoder(input logic [1:0] Op, 
        input logic [5:0] Funct, 
        input logic [3:0] Rd, 
        output logic [1:0] FlagW, 
        output logic PCS, RegW, MemW, 
        output logic MemtoReg, ALUSrc, 
        output logic [1:0] ImmSrc, RegSrc, ALUControl);
        
    logic [9:0] controls; 
    logic Branch, ALUOp;
    // Main Decoder 
    always_comb 
        casex(Op)
                              // Data-processing immediate 
        2'b00: if (Funct[5]) controls = 10'b0000101001;
                             // Data-processing register
               else controls = 10'b0000001001; 
                             // LDR 
        2'b01: if (Funct[0]) controls = 10'b0001111000; 
                             // STR 
               else controls = 10'b1001110100;
                               // B 
        2'b10: controls = 10'b0110100010; 
                             // Unimplemented
        default: controls = 10'bx;
        endcase
    assign {RegSrc, ImmSrc, ALUSrc, MemtoReg, RegW, MemW, Branch, ALUOp} = controls;
    
    // ALU Decoder 
    always_comb 
    if (ALUOp) begin // which DP Instr? 
        case(Funct[4:1]) 
            4'b0100: ALUControl = 2'b00; // ADD 
            4'b0010: ALUControl = 2'b01; // SUB 
            4'b0000: ALUControl = 2'b10; // AND 
            4'b1100: ALUControl = 2'b11; // ORR
            default: ALUControl = 2'bx; // unimplemented 
        endcase
        // update flags if S bit is set (C & V only for arith)
        FlagW[1] = Funct[0];
        FlagW[0] = Funct[0] & (ALUControl == 2'b00 | ALUControl == 2'b01);
        end
    else begin 
        ALUControl = 2'b00; // add for non-DP instructions 
        FlagW = 2'b00; // don't update Flags
    end
    // PC Logic 
    assign PCS = ((Rd == 4'b1111) & RegW) | Branch;   
endmodule




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





module datapath(input logic clk, reset, 
        input  logic [1:0]  RegSrc, 
        input  logic        RegWrite, 
        input  logic [1:0]  ImmSrc, 
        input  logic        ALUSrc, 
        input  logic [1:0]  ALUControl, 
        input  logic        MemtoReg, 
        input  logic        PCSrc, 
        output logic [3:0]  ALUFlags, 
        output logic [31:0] PC, 
        input  logic [31:0] Instr, 
        output logic [31:0] ALUResult, WriteData, 
        input  logic [31:0] ReadData);
        
    logic [31:0] PCNext, PCPlus4, PCPlus8; 
    logic [31:0] ExtImm, SrcA, SrcB, Result; 
    logic [3:0] RA1, RA2;
    
    // next PC logic 
    mux2 #(32) pcmux(PCPlus4, Result, PCSrc, PCNext);
    flopr #(32) pcreg(clk, reset, PCNext, PC); 
    adder #(32) pcadd1(PC, 32'b100, PCPlus4);
    adder #(32) pcadd2(PCPlus4, 32'b100, PCPlus8);
    
    // register file logic 
    mux2 #(4) ra1mux(Instr[19:16], 4'b1111, RegSrc[0], RA1);
    mux2 #(4) ra2mux(Instr[3:0], Instr[15:12], RegSrc[1], RA2);
    regfile rf(clk, reset, RegWrite, RA1, RA2, Instr[15:12], Result, PCPlus8, SrcA, WriteData);
    mux2 #(32) resmux(ALUResult, ReadData, MemtoReg, Result);
    extend ext(Instr[23:0], ImmSrc, ExtImm);
    
    // ALU logic 
    mux2 #(32) srcbmux(WriteData, ExtImm, ALUSrc, SrcB);
    alu alu(SrcA, SrcB, ALUControl, ALUResult, ALUFlags);
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
        assign Sum = {1'b0, SrcA[31:0]} + {1'b0, SrcB[31:0]} + {31'b0, ALUControl[0:0]};
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


module regfile(input logic clk, reset,
        input  logic        we3, 
        input  logic [3:0]  ra1, ra2, wa3, 
        input  logic [31:0] wd3, r15, 
        output logic [31:0] rd1, rd2);
        
    logic [31:0] rf[14:0];
    
    // three ported register file 
    // read two ports combinationally 
    // write third port on rising edge of clock 
    // register 15 reads PC+8 instead
    
    always_ff @(posedge clk)
        if(reset)
            rf <= '{default: 32'b0};
        else
            if (we3) rf[wa3] <= wd3;
    assign rd1 = (ra1 == 4'b1111) ? r15 : rf[ra1]; 
    assign rd2 = (ra2 == 4'b1111) ? r15 : rf[ra2]; 
endmodule


module adder #(parameter WIDTH=8) (
        input logic [WIDTH-1:0] a, b, 
        output logic [WIDTH-1:0] y);
    assign y = a + b;
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


module mux2 #(parameter WIDTH = 8) (input logic [WIDTH-1:0] d0, d1, 
        input logic s, 
        output logic [WIDTH-1:0] y);
        
    assign y = s ? d1 : d0; 
endmodule














