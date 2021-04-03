module board_top(
    input             CLOCK_50,    //    Clock 50 MHz
    input    [ 1:0 ]  KEY,         //    Pushbutton[2:0]
    input    [ 16:0]  SW,          //    Toggle Switch[9:0]
	output   [ 17:0]  LEDR
	
	// output logic [  7:0 ]    HEX0,
    // output logic [  7:0 ]    HEX1,
    // output logic [  7:0 ]    HEX2,
    // output logic [  7:0 ]    HEX3,
    // output logic [  7:0 ]    HEX4,
    // output logic [  7:0 ]    HEX5,
	// output logic [  7:0 ]    HEX6,
	// output logic [  7:0 ]    HEX7
);

    // wires & inputs
    parameter signalCount = 10;
    parameter n = 10;
    wire          clk;
    wire          clkIn     =  CLOCK_50;
    wire          rst_n     =  ~KEY[0];
    wire          clkEnable =  SW [0];
    wire [  3:0 ] clkDevide =  4'b0110;
    wire [ 15:0 ] regAddr   =  SW [16:1];
    wire [ 17:0 ] regData;
    
    fir_top fir_top (
        .clk     ( clkIn         ),
        .reset   ( rst_n         ),
        .regAddr ( regAddr       ),
        .regData ( regData[17:1] ),
        .done    ( regData[0]    )
    );   
    
	assign LEDR[17:0] = regData[17:0];
	
	//wire [ 31:0 ] h7segment = numberHex;
	
	// assign HEX0 [7] = 1'b1;
    // assign HEX1 [7] = 1'b1;
    // assign HEX2 [7] = 1'b1;
    // assign HEX3 [7] = 1'b1;
    // assign HEX4 [7] = 1'b1;
    // assign HEX5 [7] = 1'b1;
	// assign HEX6 [7] = 1'b1;
	// assign HEX7 [7] = 1'b1;

	// sm_hex_display digit_7 ( h7segment [31:28] , HEX7 [6:0] );
	// sm_hex_display digit_6 ( h7segment [27:24] , HEX6 [6:0] );
    // sm_hex_display digit_5 ( h7segment [23:20] , HEX5 [6:0] );
    // sm_hex_display digit_4 ( h7segment [19:16] , HEX4 [6:0] );
    // sm_hex_display digit_3 ( h7segment [15:12] , HEX3 [6:0] );
    // sm_hex_display digit_2 ( h7segment [11: 8] , HEX2 [6:0] );
    // sm_hex_display digit_1 ( h7segment [ 7: 4] , HEX1 [6:0] );
    // sm_hex_display digit_0 ( h7segment [ 3: 0] , HEX0 [6:0] );
              
endmodule