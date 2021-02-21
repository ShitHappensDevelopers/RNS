module sm_datapath
(
    input    logic             clk,
    input    logic             rst_p,
    input    logic  [  1:0 ]   RegSrc, 
    input    logic             RegWrite, 
    input    logic  [  1:0 ]   ImmSrc, 
    input    logic             ALUSrc, 
    input    logic  [  1:0 ]   ALUControl, 
    input    logic             MemtoReg, 
    input    logic             PCSrc, 
    output   logic  [  3:0 ]   ALUFlags, 
    input           [  3:0 ]   regAddr,
    output          [ 31:0 ]   regData,
    output   logic  [ 31:0 ]   instructionMemory_address, 
    input    logic  [ 31:0 ]   instructionMemory_data, 
    output   logic  [ 31:0 ]   ALUResult,
    output   logic  [ 31:0 ]   dataMemory_writeData, 
    input    logic  [ 31:0 ]   dataMemory_readData,
	input    logic             writeData3Src,
	input    logic             srcASrc
);

    logic [31:0] WD3;
	logic [3:0 ] A3;
	logic [31:0] SrcAMux_Src;
	
    logic [31:0] PCNext, PCPlus4, PCPlus8; 
    logic [31:0] ExtImm, SrcA, SrcB, Result; 
    logic [3:0] RA1, RA2;
    
    logic [3:0] RA0;
    assign RA0 = regAddr;
    
    // next instructionMemory_address logic 
    mux2 #(32) pcmux(PCPlus4, Result, PCSrc, PCNext);
    flopr #(32) pcreg(clk, rst_p, PCNext, instructionMemory_address); 
    adder #(32) pcadd1(instructionMemory_address, 32'b100, PCPlus4);
    adder #(32) pcadd2(PCPlus4, 32'b100, PCPlus8);
    
    // register file logic 
    mux2 #(4) ra1mux(instructionMemory_data[19:16], 4'b1111, RegSrc[0], RA1);
    mux2 #(4) ra2mux(instructionMemory_data[3:0], A3, RegSrc[1], RA2);
	
	mux2 #(4) a3mux(instructionMemory_data[15:12], 4'b1110, writeData3Src, A3);
    
    sm_register_file sm_register_file
    (
        .clk                              ( clk       ), 
        .rst_p                            ( rst_p     ),
        .read_adress0                     ( RA0       ),
        .read_adress1                     ( RA1       ), 
        .read_adress2                     ( RA2       ), 
        .write_adress3                    ( A3        ),
        .read_data0                       ( regData                         ),      
        .read_data1                       ( SrcAMux_Src                     ),
        .read_data2                       ( dataMemory_writeData            ),
        .write_data3                      ( WD3                             ),
        .write_enable3                    ( RegWrite                        ),
        .r15                              ( PCPlus8                         )
    );
    
    mux2 #(32) resmux(ALUResult, dataMemory_readData, MemtoReg, Result);
    extend ext(instructionMemory_data[23:0], ImmSrc, ExtImm);
	
	mux2 #(32) writeData3_mux(Result, PCPlus4, writeData3Src, WD3);
	mux2 #(32) srcASrc_mux(SrcAMux_Src, 32'b0, srcASrc, SrcA);
    
    // ALU logic 
    mux2 #(32) srcbmux(dataMemory_writeData, ExtImm, ALUSrc, SrcB);
    alu alu(SrcA, SrcB, ALUControl, ALUResult, ALUFlags);
endmodule