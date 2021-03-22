`include "common.sv"

module fourier_srg #(n=100) (clk, reset, addr, x, operation, y_re, y_im, done);

  input         clk;
  input         reset;
  input  [31:0] addr;
  input  [31:0] x;
  input  [1:0]  operation;
  output reg [31:0] y_re;
  output reg [31:0] y_im;
  output reg        done;
  logic    [31:0] LUT_re [n*n-1:0];
  logic    [31:0] LUT_im [n*n-1:0];
  reg    [31:0] inputs  [n-1:0];
  reg    [31:0] outputs_re [n-1:0];
  reg    [31:0] outputs_im [n-1:0];
  reg    [31:0] i, j, acc_re, acc_im;
  
  initial begin
    $readmemb("tw_re.txt", LUT_re);
    $readmemb("tw_im.txt", LUT_im);
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
    if (operation == 2'b01)
        inputs[addr] <= x;
    
    else if (operation == 2'b10 && !done) begin
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
            acc_re <= acc_re + LUT_re[i*n+j] * inputs[j];
            acc_im <= acc_im + LUT_im[i*n+j] * inputs[j];
            j <= j+1;
        end
    end
    
    else if (operation == 2'b11) begin
        y_re <= outputs_re[addr];
        y_im <= outputs_im[addr];
    end
  end

endmodule
