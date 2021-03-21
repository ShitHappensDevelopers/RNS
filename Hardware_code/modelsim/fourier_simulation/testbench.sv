`timescale 1 ns / 100 ps

`ifndef SIMULATION_CYCLES
    `define SIMULATION_CYCLES 150
`endif

module testbench(); 
    parameter n = 10;
    integer cycle; 
    initial cycle = 0;
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
    logic [31:0]  y_re;
    logic [31:0]  y_im;
    logic [31:0]  addr;
    logic [1:0 ]  operation;
    logic [31:0]  x_rns;
    logic [31:0]  y_re_rns;
    logic [31:0]  y_im_rns;
    logic         done;
       
    logic [31:0] temp = 305;
    logic [31:0] temp_rns;
    logic [31:0] temp_rns_int;
    convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns2(temp, temp_rns);
    convertor_rns_to_int #(233,239,241,251) convertor_rns_to_int_re2(temp_rns, temp_rns_int);
       
     // fourier_rns #(n) fourier_rns
     // (
         // .clk       ( clk       ),
         // .reset     ( reset     ),
         // .addr      ( addr      ),
         // .x_rns     ( x_rns     ),
         // .operation ( operation ),
         // .y_re_rns  ( y_re_rns  ),
         // .y_im_rns  ( y_im_rns  ),
         // .done      ( done      )
     // );
     // convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns(x, x_rns);
     // convertor_rns_to_int #(233,239,241,251) convertor_rns_to_int_re(y_re_rns, y_re);
     // convertor_rns_to_int #(233,239,241,251) convertor_rns_to_int_im(y_im_rns, y_im);
	 
     fourier_srg #(n) fourier_srg
     (
         .clk       ( clk       ),
         .reset     ( reset     ),
         .addr      ( addr      ),
         .x         ( x         ),
         .operation ( operation ),
         .y_re      ( y_re      ),
         .y_im      ( y_im      ),
         .done      ( done      )
     );

    // initialize test 
    initial 
        begin
        operation <= 0;
        addr <= 0;
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
    
    // input signals
    always @(posedge clk)
        begin 
            if(reset == 0 && operation == 2'b01) begin
                x <= signal[addr+1];
                addr <= addr + 1;
            end
        end
    
    // output signals
    always @(posedge clk)
        begin 
            if (reset == 0 && operation == 2'b11)
                addr <= addr + 1;
        end
    
    always @(posedge clk)
        begin 
            if(reset == 0 && !done && operation == 2'b00) begin
                operation <= 2'b01; //input signal
                x <= signal[0];
                addr <= 0;
            end
            if (reset == 0 && !done && addr >= n-1) operation <= 2'b10; //process signal
            if (reset == 0 && done && operation == 2'b10) begin
                operation <= 2'b11;
                addr <= 0;
            end
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
    
    
    
    
    
    
    
    
    
    
    