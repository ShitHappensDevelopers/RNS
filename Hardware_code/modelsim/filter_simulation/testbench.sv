`timescale 1 ns / 100 ps

`ifndef SIMULATION_CYCLES
    `define SIMULATION_CYCLES 300
`endif

module testbench(); 
    parameter signalCount = 10;
    parameter n = 10;
    integer cycle;
    logic clk; 
    logic reset; 
    wire          rst_p     =  0;
    wire          clkEnable =  1;
    wire [  3:0 ] clkDevide =  4'b0110;
    wire [  3:0 ] regAddr   =  4'b0110;
    wire [ 31:0 ] regData;
    wire          clkOut;
    
    int           signal[0:9];
    int           coefs [0:5];
    
    logic [31:0]  x;
    logic [31:0]  y;
    logic [31:0]  addr;
    logic [1:0 ]  operation;
    logic         done;
    
    logic [31:0]  x_rns;
    logic [31:0]  y_rns;
	 
     fir_rns #(n,signalCount) fir_rns
     (
         .clk       ( clk      ),
         .reset     ( reset    ),
         .addr      ( addr     ),
         .x_rns     ( x_rns    ),
         .operation (operation ),
         .y_rns     ( y_rns    ),
         .done      ( done     )
     );
	 convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns(x, x_rns);
     convertor_rns_to_int #(233,239,241,251) convertor_rns_to_int(y_rns, y);

     // fir_srg #(n,signalCount) fir_srg
     // (
         // .clk       ( clk     ),
         // .reset     ( reset   ),
         // .addr      ( addr    ),
         // .x         ( x       ),
         // .operation (operation),
         // .y         ( y       ),
         // .done      ( done    )
     // );
     
    // initialize test 
    initial 
        begin 
            addr <= 0;
            operation <= 0;
            signal = '{0,1,2,3,4,5,6,7,8,9};
            x <= 0;
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
            if (reset == 0 && !done && operation == 2'b00) begin 
                operation <= 2'b01;
                addr <= 0;
                x <= signal[0];
            end
            if (reset == 0 && operation == 2'b01 && addr != signalCount) begin
                x <= signal[addr+1];
                addr <= addr+1;
            end
            if (reset == 0 && operation == 2'b01 && addr == signalCount)
                operation <= 2'b10;
            if (reset == 0 && done && operation == 2'b10) begin
                operation <= 2'b11;
                addr <= 0;
            end
            if (reset == 0 && done && operation == 2'b11)
                addr <= addr+1;           
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
    
    
    
    
    
    
    
    
    
    
    