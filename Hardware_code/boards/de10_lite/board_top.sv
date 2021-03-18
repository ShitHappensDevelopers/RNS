module board_top
(
    input            ADC_CLK_10,       //    Clock 50 MHz
    input    [ 1:0]  KEY,              //    Pushbutton[1:0]
    input    [ 5:0]  SW,               //    Toggle Switch[5:0]
    output   [ 9:0]  LEDR
);
      
      
    wire          clkIn     =  ADC_CLK_10;
    wire          rst       =  KEY[0];
    wire          clkEnable =  SW [0];
    wire [  3:0 ] clkDevide =  4'b0110;
    wire [ 31:0 ] regAddr   =  SW [4:1];
    wire [ 31:0 ] regData;
    
    
    logic [31:0]  x;
    logic [31:0]  y;
    logic [31:0]  x_rns;
    logic [31:0]  y_rns;
    
    assign x = regAddr;
    assign regData = y;
    assign LEDR[9:0] = regData[9:0];
    
//     fir_srg fir_srg
//     (
//         .clk   ( clkIn     ),
//         .reset ( rst   ),
//         .x     ( x[31:0] ),
//         .y     ( y[31:0] )
//     );
        
    fir_rns fir_rns
     (
         .clk   ( clkIn ),
         .reset ( rst   ),
         .x     ( x_rns[31:0] ),
         .y     ( y_rns[31:0] )
     );
	 convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns(x, x_rns);
   convertor_rns_to_int #(233,239,241,251) convertor_rns_to_int(y_rns, y);   
      
   
endmodule