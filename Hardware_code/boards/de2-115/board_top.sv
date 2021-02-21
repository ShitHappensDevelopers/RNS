module board_top
(
        input            CLOCK_50,    //    Clock 50 MHz
        input    [ 1:0]  KEY,         //    Pushbutton[2:0]
        input    [ 5:0]  SW,          //    Toggle Switch[9:0]
		output   [ 17:0] LEDR
);
		
    // wires & inputs
    wire          clk;
    wire          clkIn     =  CLOCK_50;
    wire          rst_n     =  ~KEY[0];
    wire          clkEnable =  SW [0];
    wire [  3:0 ] clkDevide =  4'b0110;
    wire [  4:0 ] regAddr   =  SW [5:1];
    wire [ 17:0 ] regData;
        
    //cores
    sm_top sm_top
    (
        .clkIn      ( clkIn     ),
        .rst_p      ( rst_n     ),
        .clkDevide  ( clkDevide ),
        .clkEnable  ( clkEnable ),
        .clk        ( clk       ),
        .regAddr    ( regAddr   ),
        .regData    ( regData   )
    );
	
	assign LEDR[17:0] = regData[17:0];
	
endmodule
