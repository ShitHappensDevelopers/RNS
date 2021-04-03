`timescale 1 ns / 100 ps

`ifndef SIMULATION_CYCLES
    `define SIMULATION_CYCLES 3000
`endif

module testbench(); 
    integer cycle;
    logic         clk; 
    logic         reset;
    reg  [ 31:0 ] regAddr;
    wire [ 31:0 ] regData; 
    logic         done; 
    
    // fourier_top fourier_top (
    //     .clk     ( clk ),
    //     .reset   ( reset ),
    //     .regAddr ( regAddr ),
    //     .regData ( regData ),
    //     .done    ( done )
    // );     

    reg[63:0] a = -64'd65966565776878;
    reg[64:0] b;
    reg[63:0] c;
    convertor_int_to_rns_64 convertor_int_to_rns_64(a,b);
    convertor_rns_to_int_64 convertor_rns_to_int_64(b,c);
    
    initial 
        begin 
            regAddr <= 0;
            reset <= 1;
            # 22;
            cycle = 0;
            reset <= 0;            
        end
    
    always 
        begin clk <= 1; 
        # 5; clk <= 0; # 5; 
    end
    
    always @(posedge clk)
        begin
            if (done)
                regAddr <= regAddr + 1;
        end
        
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