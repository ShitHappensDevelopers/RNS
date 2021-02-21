

`ifndef SIMULATION_CYCLES
    `define SIMULATION_CYCLES 100
`endif

module testbench(); 
    logic clk; 
    logic reset; 
    logic [31:0] WriteData, DataAdr; 
    logic MemWrite;
 
    // instantiate device to be tested 
    top dut(clk, reset, WriteData, DataAdr, MemWrite);
    
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
    
    
    
    
    
    
    
    
    
    
    