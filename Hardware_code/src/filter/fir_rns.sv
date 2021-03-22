`include "common.sv"

module fir_rns #(n=100,signalLength=1000) (clk, reset, addr, x_rns, operation, y_rns, done);

  input             clk;
  input             reset;
  input      [31:0] addr;
  input      [31:0] x_rns;
  input      [1:0]  operation;
  output reg [31:0] y_rns;
  output reg        done;
  logic      [31:0] coefsLut_rns [n-1:0];
  reg        [31:0] inputs  [signalLength-1+n-1:0];
  reg        [31:0] outputs [signalLength-1:0];
  reg        [31:0] i; //calulationCounter;
  reg        [31:0] j; //signalCounter;
  reg        [31:0] acc;
  
  function [31:0] add_rns (input  [31:0]  x1, x2);
    return {8'((x1[31:24] + x2[31:24]) % 251),8'((x1[23:16] + x2[23:16]) % 241),8'((x1[15:8] + x2[15:8]) % 239),8'((x1[7:0] + x2[7:0]) % 233)};
  endfunction
  
  function [31:0] mul_rns (input  [31:0]  x1, x2);
    return {8'((x1[31:24] * x2[31:24]) % 251),8'((x1[23:16] * x2[23:16]) % 241),8'((x1[15:8] * x2[15:8]) % 239),8'((x1[7:0] * x2[7:0]) % 233)};
  endfunction
  
  initial $readmemb("coefs_rns.txt", coefsLut_rns);
  
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
        inputs[addr+n-1] <= x_rns;
        
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
            acc <= add_rns(acc, mul_rns(inputs[i+j], coefsLut_rns[n-i-1]));
            i <= i+1;
        end
    end
    
    else if (operation == 2'b11)
        y_rns <= outputs[addr];
  end

endmodule
