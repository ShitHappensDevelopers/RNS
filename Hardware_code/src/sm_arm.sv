module sm_arm
(
    input           clk,                           // clock
    input           rst_p,                         // reset
    input   [ 3:0]  regAddr,                       // debug access reg address
    output  [31:0]  regData,                       // debug access reg data
    output  [31:0]  instructionMemory_address,     // instruction memory address
    input   [31:0]  instructionMemory_data,        // instruction memory data
    output  [31:0]  dataMemory_address,            // data memory address
    output          dataMemory_writeEnable,        // data memory write enable
    output  [31:0]  dataMemory_writeData,          // data memory write data
    input   [31:0]  dataMemory_readData            // data memory read data
);

    logic [31:0] ALUResult;
    assign dataMemory_address = ALUResult;

    logic  [3:0]  ALUFlags; 
    logic         RegWrite, ALUSrc, MemtoReg, PCSrc; 
    logic  [1:0]  RegSrc, ImmSrc, ALUControl;
	
	logic         WD3Src;
	logic         SrcASrc;
    
    sm_controller sm_controller(clk, rst_p, instructionMemory_data[31:12], ALUFlags, 
        RegSrc, RegWrite, ImmSrc, 
        ALUSrc, ALUControl,
        dataMemory_writeEnable, MemtoReg, PCSrc, WD3Src, SrcASrc); 
        
    sm_datapath sm_datapath
    (
        .clk                           ( clk           ),
        .rst_p                         ( rst_p         ),
        .RegSrc                        ( RegSrc        ),
        .RegWrite                      ( RegWrite      ),
        .ImmSrc                        ( ImmSrc        ),
        .ALUSrc                        ( ALUSrc        ),
        .ALUControl                    ( ALUControl    ),
        .MemtoReg                      ( MemtoReg      ),
        .PCSrc                         ( PCSrc         ),
        .ALUFlags                      ( ALUFlags      ),
        .regAddr                       ( regAddr       ),
        .regData                       ( regData       ),
        .instructionMemory_address     ( instructionMemory_address   ),
        .instructionMemory_data        ( instructionMemory_data      ),
        .ALUResult                     ( ALUResult                   ),
        .dataMemory_writeData          ( dataMemory_writeData        ),
        .dataMemory_readData           ( dataMemory_readData         ),
		.writeData3Src                 ( WD3Src                      ),
		.srcASrc                       ( SrcASrc                     )
    ); 
            
endmodule
