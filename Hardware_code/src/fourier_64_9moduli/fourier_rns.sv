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
  reg    [31:0] i, j, acc_re, acc_im, phaze;

  reg [31:0] add_inp1;
  reg [31:0] add_inp2;
  reg [31:0] add_out;
  add_rns add_rns(add_inp1, add_inp2, add_out);

  reg [31:0] mul_inp1;
  reg [31:0] mul_inp2;
  reg [31:0] mul_out;
  mul_rns mul_rns(mul_inp1, mul_inp2, mul_out);
  
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
        phaze <= 0;
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
        if (i == n-1 && j == n) begin
            done <= 1;
            phaze <= 0;
        end
        if (j == n) begin
            j <= 0;
            outputs_re[i] <= acc_re;
            outputs_im[i] <= acc_im;
            acc_re <= 0;
            acc_im <= 0;
            i <= i+1;
            phaze <= 0;
        end
        else begin
          if (phaze == 0) begin
            mul_inp1 <= LUT_re[i*n+j];
            mul_inp2 <= inputs[j];
            phaze <= 1;
          end
          if (phaze == 1) begin
            add_inp1 <= acc_re;
            add_inp2 <= mul_out;
            phaze <= 2;
          end
          if (phaze == 2) begin
            acc_re <= add_out;
            mul_inp1 <= LUT_im[i*n+j];
            mul_inp2 <= inputs[j];
            phaze <= 3;
          end
          if (phaze == 3) begin
            add_inp1 <= acc_im;
            add_inp2 <= mul_out;
            phaze <= 4;
          end
          if (phaze == 4) begin
            acc_im <= add_out;
            phaze <= 5;
          end
          if (phaze == 5) begin
            j <= j+1;
            phaze <= 0;
          end
        end
    end
  end

endmodule


module add_rns (x1, x2, z);

  input [31:0] x1;
  input [31:0] x2;
  output [31:0] z;

  assign z = {8'((x1[31:24] + x2[31:24]) % 251),8'((x1[23:16] + x2[23:16]) % 241),8'((x1[15:8] + x2[15:8]) % 239),8'((x1[7:0] + x2[7:0]) % 233)};

endmodule



module mul_rns (x1, x2, z);

  input [31:0] x1;
  input [31:0] x2;
  output [31:0] z;

  assign z = {8'((x1[31:24] * x2[31:24]) % 251),8'((x1[23:16] * x2[23:16]) % 241),8'((x1[15:8] * x2[15:8]) % 239),8'((x1[7:0] * x2[7:0]) % 233)};

endmodule
