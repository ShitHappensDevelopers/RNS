

`ifndef SIMULATION_CYCLES
    `define SIMULATION_CYCLES 300
`endif

module testbench(); 
    logic clk; 
    logic reset; 
    logic [31:0] WriteData, DataAdr; 
    logic MemWrite;
 
    // instantiate device to be tested 
    //wire          clk;
    //wire          clkIn     =  ADC_CLK_10;
    wire          rst_p     =  0;
    wire          clkEnable =  1;
    wire [  3:0 ] clkDevide =  4'b0110;
    wire [  3:0 ] regAddr   =  4'b0110;
    wire [ 31:0 ] regData;

    wire          clkOut;
        
    sm_top sm_top
    (       
        .clkIn      ( clk     ),
        .rst_p      ( reset     ),
        .clkDevide  ( clkDevide ),
        .clkEnable  ( clkEnable ),
        .clk        ( clkOut      ),
        .regAddr    ( regAddr   ),
        .regData    ( regData   )
    );

    defparam sm_top.sm_clk_divider.bypass = 1;

    // initialize test 
    initial 
        begin reset <= 1;
        # 22; reset <= 0; 
        end
    // generate clock to sequence tests 
    always 
        begin clk <= 1; 
        # 5; clk <= 0; # 5; 
    end
    
     integer cycle; initial cycle = 0;
    // check that 7 gets written to address 0x64 
    // at end of program 
    always @(negedge clk) 
        begin 
          cycle = cycle + 1;
            if(cycle > `SIMULATION_CYCLES) 
                begin 
                    $display("Simulation timeout");
                    $stop; 
            end 
        end 
endmodule
    
    
    
    
    
    
    
    
    
    
    