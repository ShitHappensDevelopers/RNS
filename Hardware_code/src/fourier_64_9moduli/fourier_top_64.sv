module fourier_top_64(clk, reset, regAddr, regData, done);

  parameter n = 10;
    
  input         clk;
  input         reset;
  input  [31:0] regAddr;
  output [31:0] regData;
  output        done;
  
    reg   [63:0]  signal[0:9];  
    logic [63:0]  x;
    logic [63:0]  y_re;
    logic [63:0]  y_im;
    logic [31:0]  addr;
    logic [1:0 ]  operation;
    
    logic [64:0]  x_rns;
    logic [64:0]  y_re_rns;
    logic [64:0]  y_im_rns;
	 
     assign regData = y_re;
     
     fourier_rns_64 #(n) fourier_rns_64
     (
         .clk       ( clk       ),
         .reset     ( reset     ),
         .addr      ( addr      ),
         .x_rns     ( x_rns     ),
         .operation ( operation ),
         .y_re_rns  ( y_re_rns  ),
         .y_im_rns  ( y_im_rns  ),
         .done      ( done      )
     );
    convertor_int_to_rns_64 convertor_int_to_rns_64(x, x_rns);
     convertor_rns_to_int_64 convertor_rns_to_int_re_64(y_re_rns, y_re);
     convertor_rns_to_int_64 convertor_rns_to_int_im_64(y_im_rns, y_im);

    // reg [63:0] a = 64'd100;
    // reg [63:0] b = -64'd200;
    // reg [63:0] c;
    // reg [64:0] a_rns;
    // reg [64:0] b_rns;
    // reg [64:0] c_rns;


	//  convertor_int_to_rns_64 convertor_int_to_rns_64_a(a, a_rns);
	//  convertor_int_to_rns_64 convertor_int_to_rns_64_b(b, b_rns);
    //  convertor_rns_to_int_64 convertor_rns_to_int_re_64(c_rns, c);

    //mul_rns_64 add_rns_64(a_rns, b_rns, c_rns);

    //initial $readmemb("output_signal_rns.txt", signal);

    //  fourier_srg_64 #(n) fourier_srg_64
    //  (
    //      .clk       ( clk       ),
    //      .reset     ( reset     ),
    //      .addr      ( addr      ),
    //      .x         ( x         ),
    //      .operation ( operation ),
    //      .y_re      ( y_re      ),
    //      .y_im      ( y_im      ),
    //      .done      ( done      )
    //  );	
    initial $readmemb("output_signal.txt", signal);
        
    always @(posedge clk)
        begin
            if (reset == 1) begin
                addr <= 0;
                operation <= 0;
                x <= 0;
            end
            else if (reset == 0 && !done && operation == 2'b00) begin 
                operation <= 2'b01;
                addr <= 0;
                x <= signal[0];
            end
            else if (reset == 0 && operation == 2'b01 && addr != n) begin
                x <= signal[addr+1];
                addr <= addr+1;
            end
            else if (reset == 0 && operation == 2'b01 && addr == n)
                operation <= 2'b10;
            else if (reset == 0 && done && operation == 2'b10) begin
                operation <= 2'b11;
                addr <= 0;
            end
            if (reset == 0 && done && operation == 2'b11)
                //addr <= addr+1;
                addr <= regAddr;
        end
endmodule