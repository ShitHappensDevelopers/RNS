

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

module top(input logic clk, reset, 
        output logic [31:0] WriteData, DataAdr, 
        output logic MemWrite);
        
    logic [31:0] PC, Instr, ReadData;
    // instantiate processor and memories 
    arm arm(clk, reset, PC, Instr, MemWrite, DataAdr, WriteData, ReadData); 
    imem imem(PC, Instr); 
    dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData); 
endmodule


module dmem(input logic clk, we, 
        input logic [31:0] a, wd, 
        output logic [31:0] rd);
        
    logic [31:0] RAM[63:0];
    
    assign rd = RAM[a[31:2]]; // word aligned
    
    always_ff @(posedge clk) 
        if (we) RAM[a[31:2]] <= wd; 
endmodule
    
    
module imem(input logic [31:0] a, 
        output logic [31:0] rd);
        
    logic [31:0] RAM[63:0];
    initial $readmemh("memfile.dat",RAM);
    assign rd = RAM[a[31:2]]; // word aligned 
endmodule   
    
    
    
    
    
    
    
    
    
    
    