`include "common.sv"

module fourier_rns #(n=100) (clk, reset, addr, x_rns, operation, y_re_rns, y_im_rns, done);

  input         clk;
  input         reset;
  input  [31:0] addr;
  input  [31:0] x_rns;
  input  [1:0]  operation;
  output reg [31:0] y_re_rns;
  output reg [31:0] y_im_rns;
  output reg        done;
  logic    [31:0] LUT_re [n*n-1:0];
  logic    [31:0] LUT_im [n*n-1:0];
  reg    [31:0] inputs  [n-1:0];
  reg    [31:0] outputs_re [n-1:0];
  reg    [31:0] outputs_im [n-1:0];
  reg    [31:0] i, j, acc_re, acc_im;
  
  function [31:0] add_rns (input  [31:0]  x1, x2);
    return {8'((x1[31:24] + x2[31:24]) % 251),8'((x1[23:16] + x2[23:16]) % 241),8'((x1[15:8] + x2[15:8]) % 239),8'((x1[7:0] + x2[7:0]) % 233)};
  endfunction
  
  function [31:0] mul_rns (input  [31:0]  x1, x2);
    return {8'((x1[31:24] * x2[31:24]) % 251),8'((x1[23:16] * x2[23:16]) % 241),8'((x1[15:8] * x2[15:8]) % 239),8'((x1[7:0] * x2[7:0]) % 233)};
  endfunction
  
  initial begin
    $readmemb("tw_re_rns.txt", LUT_re);
    $readmemb("tw_im_rns.txt", LUT_im);
   end
  
  integer k;
  always @(posedge clk)
  begin
    if (reset == 1) begin
        i <= 0;
        j <= 0;
        acc_re <= 0;
        acc_im <= 0;
        done <= 0;
        for (k=0; k<n; k=k+1) begin
            inputs[k] <= 0;
            outputs_re[k] <= 0;
            outputs_im[k] <= 0;
        end
    end
    if (operation == 2'b01) begin
        inputs[addr] <= x_rns;
    end
    else if (operation == 2'b11) begin
        y_re_rns <= outputs_re[addr];
        y_im_rns <= outputs_im[addr];
    end
    else if (operation == 2'b10 && !done) begin
        acc_re <= add_rns(acc_re, mul_rns(LUT_re[i*n+j], inputs[j]));
        acc_im <= add_rns(acc_im, mul_rns(LUT_im[i*n+j], inputs[j]));
        
        if (i == n-1 && j == n) begin
            done <= 1;
        end       
        if (j == n) begin
            j <= 0;
            outputs_re[i] <= acc_re;
            outputs_im[i] <= acc_im;
            acc_re <= 0;
            acc_im <= 0;
            i <= i+1;
        end
        else begin
            j <= j+1;
        end
    end
  end

endmodule
