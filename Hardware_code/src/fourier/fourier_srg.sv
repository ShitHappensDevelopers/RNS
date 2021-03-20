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
  reg    [31:0] LUT_re [n-1:0][n-1:0];
  reg    [31:0] LUT_im [n-1:0][n-1:0];
  reg    [31:0] inputs  [n-1:0];
  reg    [31:0] outputs_re [n-1:0];
  reg    [31:0] outputs_im [n-1:0];
  reg    [31:0] i, j, acc_re, acc_im;
  
  genvar k2, k3;
  generate begin : a0
    for (k2=0;k2<n;k2=k2+1) begin : a1
      for (k3=0;k3<n;k3=k3+1) begin : a2
        // wire A_re = $cos(-2 * `PI * k2 * k3 / n) * `SCALE;
        // wire A_im = $sin(-2 * `PI * k2 * k3 / n) * `SCALE;
        assign LUT_re[k2][k3] = $cos(-2 * `PI * k2 * k3 / n) * `SCALE;
        assign LUT_im[k2][k3] = $sin(-2 * `PI * k2 * k3 / n) * `SCALE; 
      end : a2
    end : a1
  end : a0
  endgenerate
  
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
        inputs[addr] <= x;
    end
    else if (operation == 2'b11) begin
        y_re <= outputs_re[addr];
        y_im <= outputs_im[addr];
    end
    else if (operation == 2'b10 && !done) begin
        // acc_re <= acc_re + a0.a1[i].a2[j].A_re * inputs[j];
        // acc_im <= acc_im + a0.a1[i].a2[j].A_im * inputs[j];
        acc_re <= acc_re + LUT_re[i][j] * inputs[j];
        acc_im <= acc_im + LUT_im[i][j] * inputs[j];
        
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
