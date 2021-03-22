`include "common.sv"

module fir_srg #(n=100,signalLength=1000) (clk, reset, addr, x, operation, y, done);

  input             clk;
  input             reset;
  input      [31:0] addr;
  input      [31:0] x;
  input      [1:0]  operation;
  output reg [31:0] y;
  output reg        done;
  logic      [31:0] coefsLut [n-1:0];
  reg        [31:0] inputs  [signalLength-1+n-1:0];
  reg        [31:0] outputs [signalLength-1:0];
  reg        [31:0] i; //calulationCounter;
  reg        [31:0] j; //signalCounter;
  reg        [31:0] acc;
  
  initial $readmemb("coefs.txt", coefsLut);
  
  integer k;
  always @(posedge clk)
  begin
    if (reset == 1) begin
        i <= 0;
        j <= 0;
        acc <= 0;
        done <= 0;
        for (k=0; k<signalLength+n-1; k=k+1) begin
            inputs[k] <= 0;
            outputs[k] <= 0;
        end
    end
    if (operation == 2'b01)
        inputs[addr+n-1] <= x;
        
    else if (operation == 2'b10 && !done) begin
        if (j == signalLength)
            done <= 1;
        else if (i == n) begin
            outputs[j] <= acc;
            acc <= 0;
            j <= j+1;
            i <= 0;
        end 
        else begin
            acc <= acc + inputs[i+j] * coefsLut[n-i-1];
            i <= i+1;
        end
    end
    
    else if (operation == 2'b11)
        y <= outputs[addr];
  end

endmodule
