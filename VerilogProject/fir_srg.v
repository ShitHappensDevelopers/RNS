module fir_srg (clk, reset, x, y);  //----> Interface

  input        clk;
  input        reset;
  input  [31:0] x;
  output [31:0] y;
  reg    [31:0] y;
// Tapped delay line array of bytes
  reg    [31:0] tap0, tap1, tap2, tap3, tap4, tap5;
// For bit access use single vectors in Verilog
  
  always @(posedge clk)  //----> Behavioral Style
  begin : p1
    if (reset == 1) begin
            tap0 <= 0;
            tap1 <= 0;
            tap2 <= 0;
            tap3 <= 0;
            tap4 <= 0;
            tap5 <= 0;
        end
    else begin
       // Compute output y with the filter coefficients weight.
       // The coefficients are [-1  3.75  3.75  -1]. 
       // Multiplication and division for Altera MaxPlusII can 
       // be done in Verilog with sign extensions and shifts! 
       
        //y <= (tap1<<1) + tap1 + {tap1[31],tap1[31:1]} 
        //     + {tap1[31],tap1[31],tap1[31:2]} + (tap2<<1) + tap2
        //     + {tap2[31],tap2[31:1]} 
        //     + {tap2[31],tap2[31],tap2[31:2]} - tap3 - tap0;
        y <= tap0 + tap1*2 + tap2*3 + tap3*3 + tap4*2 + tap5;

        tap5 <= tap4;
        tap4 <= tap3;
        tap3 <= tap2;  // Tapped delay line: shift one 
        tap2 <= tap1;
        tap1 <= tap0;
        tap0 <= x;   // Input in register 0
    end
  end

endmodule
