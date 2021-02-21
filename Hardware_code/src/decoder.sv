module decoder
(
	input  logic  [1:0] Op, 
    input  logic  [5:0] Funct, 
    input  logic  [3:0] Rd, 
    output logic  [1:0] FlagW, 
    output logic        PCS, RegW, MemW, 
    output logic        MemtoReg, ALUSrc, 
    output logic  [1:0] ImmSrc, RegSrc, ALUControl,
	output logic        WD3Src,
	output logic        SrcASrc
);
        
    logic [11:0] controls; 
    logic Branch, ALUOp;
    // Main Decoder 
    always_comb 
        casex(Op)
                             // MOV
        2'b00: if (Funct[4:1] == 4'b1101) controls = 12'b000000100101;
							 // Data-processing immediate 
			   else if (Funct[5]) controls = 12'b000010100100;
                             // Data-processing register
               else controls = 12'b000000100100; 
                             // LDR 
        2'b01: if (Funct[0]) controls = 12'b000111100000; 
                             // STR 
               else controls = 12'b100111010000;
                               
        2'b10: if (Funct[5]) //BL
					if (Funct[4]) controls = 12'b011010101010; 
					         //B
					else controls = 12'b011010001000;
			   else controls = 12'bx;
                             // Unimplemented
        default: controls = 12'bx;
        endcase
    assign {RegSrc, ImmSrc, ALUSrc, MemtoReg, RegW, MemW, Branch, ALUOp, WD3Src, SrcASrc} = controls;
    
    // ALU Decoder 
    always_comb 
    if (ALUOp) begin // which DP Instr? 
        case(Funct[4:1]) 
            4'b0100: ALUControl = 2'b00; // ADD 
            4'b0010: ALUControl = 2'b01; // SUB 
            4'b0000: ALUControl = 2'b10; // AND 
            4'b1100: ALUControl = 2'b11; // ORR 
			4'b1101: ALUControl = 2'b00; // MOV
            default: ALUControl = 2'bx;  // unimplemented 
        endcase
        // update flags if S bit is set (C & V only for arith)
        if(Funct[4:1] == 4'b1101) begin
			FlagW[1] = 1'b0;
			FlagW[0] = 1'b0;
		  end
		else begin
			FlagW[1] = Funct[0];
			FlagW[0] = Funct[0] & (ALUControl == 2'b00 | ALUControl == 2'b01);
		  end
        end
    else begin 
        ALUControl = 2'b00; // add for non-DP instructions 
        FlagW = 2'b00; // don't update Flags
    end
    // PC Logic 
    assign PCS = ((Rd == 4'b1111) & RegW) | Branch;   
endmodule