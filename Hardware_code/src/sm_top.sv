module sm_top
(
    input           clkIn,
    input           rst_p,
    input   [ 3:0 ] clkDevide,
    input           clkEnable,
    output          clk,
    input   [ 3:0 ] regAddr,
    output  [31:0 ] regData
);
    
    sm_clk_divider sm_clk_divider
    (
        .clkIn      ( clkIn       ),
        .rst_p      ( rst_p       ),
        .clkDevide  ( clkDevide   ),
        .clkEnable  ( clkEnable   ),
        .clkOut     ( clk         )
    );
    
    logic    [31:0]  instructionMemory_address;
    logic    [31:0]  instructionMemory_data;
    
    instruction_memory instruction_memory(instructionMemory_address, instructionMemory_data);
    
    
    logic            dataMemory_writeEnable;
    logic    [31:0]  dataMemory_address;
    logic    [31:0]  dataMemory_writeData;
    logic    [31:0]  dataMemory_readData;
    
    data_memory data_memory
    (
        .clk             ( clk                        ),
        .write_enable    ( dataMemory_writeEnable     ),
        .adress          ( dataMemory_address         ),
        .write_data      ( dataMemory_writeData       ),
        .read_data       ( dataMemory_readData        )
    );
    
    // instantiate processor and memories 
    sm_arm sm_arm
    (       
        .clk                          ( clk        ),
        .rst_p                        ( rst_p      ),
        .regAddr                      ( regAddr    ),
        .regData                      ( regData    ),
        .instructionMemory_address    ( instructionMemory_address    ),
        .instructionMemory_data       ( instructionMemory_data       ),
        .dataMemory_address           ( dataMemory_address           ),
        .dataMemory_writeEnable       ( dataMemory_writeEnable       ),
        .dataMemory_writeData         ( dataMemory_writeData         ),
        .dataMemory_readData          ( dataMemory_readData          )
    );
    
endmodule




















