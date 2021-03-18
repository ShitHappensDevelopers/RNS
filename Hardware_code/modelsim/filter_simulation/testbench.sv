`timescale 1 ns / 100 ps

`ifndef SIMULATION_CYCLES
    `define SIMULATION_CYCLES 150
`endif

module testbench(); 
    integer cycle; initial cycle = 0;
    logic clk; 
    logic reset; 
    //logic [31:0] WriteData, DataAdr; 
    //logic MemWrite;
 
    // instantiate device to be tested 
    //wire          clk;
    //wire          clkIn     =  ADC_CLK_10;
    wire          rst_p     =  0;
    wire          clkEnable =  1;
    wire [  3:0 ] clkDevide =  4'b0110;
    wire [  3:0 ] regAddr   =  4'b0110;
    wire [ 31:0 ] regData;

    wire          clkOut;
    
    
    
    int           signal[0:9];
    
    logic [31:0]  x;
    logic [31:0]  y;
    logic [31:0]  x_rns;
    logic [31:0]  y_rns;
    

    
     //fir_srg fir_srg
     //(
     //    .clk   ( clk     ),
     //    .reset ( reset   ),
     //    .x     ( x[31:0] ),
     //    .y     ( y[31:0] )
     //);
	 
     fir_rns fir_rns
     (
         .clk   ( clk     ),
         .reset ( reset   ),
         .x     ( x_rns[31:0] ),
         .y     ( y_rns[31:0] )
     );
	 convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns(x, x_rns);
     convertor_rns_to_int #(233,239,241,251) convertor_rns_to_int(y_rns, y);

    // initialize test 
    initial 
        begin 
        signal = '{0,1,2,3,4,5,6,7,8,9};
        x <= 32'b00000000000000000000000000000000;
        reset <= 1;
        # 22;
		cycle = 0;	
		reset <= 0;		
        end
    // generate clock to sequence tests 
    always 
        begin clk <= 1; 
        # 5; clk <= 0; # 5; 
    end
    
    always @(posedge clk) 
        begin 
            if(reset == 0) 
                x <= signal[cycle];
             
        end
    
    // check that 7 gets written to address 0x64 
    // at end of program 
    always @(posedge clk) 
        begin 
          cycle = cycle + 1;
            if(cycle > `SIMULATION_CYCLES) 
                begin 
                    $display("Simulation timeout");
                    $stop; 
            end 
        end 
endmodule
    
    
    
    
    
    
    
    
    
    
    