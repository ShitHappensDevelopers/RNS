module board_top
(
    input            ADC_CLK_10,       //    Clock 50 MHz
    input    [ 1:0]  KEY,              //    Pushbutton[1:0]
    input    [ 5:0]  SW,               //    Toggle Switch[5:0]
    output   [ 9:0]  LEDR
);
        
    wire          clk;
    wire          clkIn     =  ADC_CLK_10;
    wire          rst_p     =  ~KEY[0];
    wire          clkEnable =  SW [0];
    wire [  3:0 ] clkDevide =  4'b0110;
    wire [  3:0 ] regAddr   =  SW [4:1];
    wire [ 31:0 ] regData;
        
    sm_top sm_top
    (       
        .clkIn      ( clkIn     ),
        .rst_p      ( rst_p     ),
        .clkDevide  ( clkDevide ),
        .clkEnable  ( clkEnable ),
        .clk        ( clk       ),
        .regAddr    ( regAddr   ),
        .regData    ( regData   )
    );
    
    assign LEDR[9:0] = regData[9:0];
    
endmodule