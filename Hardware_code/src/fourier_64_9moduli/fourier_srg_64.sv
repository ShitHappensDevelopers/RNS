`include "common.sv"

module fourier_srg_64 #(n=100) (clk, reset, addr, x, operation, y_re, y_im, done);
  input             clk;
  input             reset;
  input      [31:0] addr;
  input      [63:0] x;
  input      [1:0 ] operation;
  output reg [63:0] y_re;
  output reg [63:0] y_im;
  output reg        done;
  logic      [63:0] LUT_re [n*n-1:0];
  logic      [63:0] LUT_im [n*n-1:0];
  reg        [63:0] inputs [n-1:0];
  reg        [63:0] outputs_re [n-1:0];
  reg        [63:0] outputs_im [n-1:0];
  reg        [63:0] acc_re, acc_im;
  reg        [31:0] i, j, phaze;
  
  reg [63:0] add_inp1;
  reg [63:0] add_inp2;
  reg [63:0] add_out;
  add add(add_inp1, add_inp2, add_out);

  reg [63:0] mul_inp1;
  reg [63:0] mul_inp2;
  reg [63:0] mul_out;
  mul mul(mul_inp1, mul_inp2, mul_out);

  initial begin
    $readmemb("output_tw_re.txt", LUT_re);
    $readmemb("output_tw_im.txt", LUT_im);
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
            // acc_re <= acc_re + LUT_re[i*n+j] * inputs[j];
            // acc_im <= acc_im + LUT_im[i*n+j] * inputs[j];
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
    
    else if (operation == 2'b11) begin
        y_re <= outputs_re[addr];
        y_im <= outputs_im[addr];
    end
  end

endmodule



module add (x1, x2, z);
  input  [63:0] x1;
  input  [63:0] x2;
  output [63:0] z;

  assign z = x1 + x2;
endmodule



module mul (x1, x2, z);
  input  [63:0] x1;
  input  [63:0] x2;
  output [63:0] z;

  assign z = x1 * x2;
endmodule
