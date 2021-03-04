module fir_rns (clk, reset, x, y);

  input        clk;
  input        reset;
  input  [31:0] x;
  output [31:0] y;
  reg    [31:0] y;
  reg    [31:0] dummy;
  reg    [31:0] tap0, tap1, tap2, tap3, tap4, tap5;
  reg    [31:0] coef0, coef1, coef2, coef3, coef4, coef5;
  
  convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns1(1, coef0);
  convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns2(2, coef1);
  convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns3(3, coef2);
  convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns4(3, coef3);
  convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns5(2, coef4);
  convertor_int_to_rns #(233,239,241,251) convertor_int_to_rns6(1, coef5);
       
  // function add_rns;
  // input  [31:0]  x1;
  // input  [31:0]  x2;
  // begin
    // //add_rns = {(x1[31:24] + x2[31:24]) % 251,(x1[23:16] + x2[23:16]) % 241,(x1[15:8] + x2[15:8]) % 239,(x1[7:0] + x2[7:0]) % 233};
    // add_rns = {28,8'b11111111,(x1[15:8] + x2[15:8]),(x1[7:0] + x2[7:0]) % 233};
  // end
  // endfunction
  
  function [31:0] add_rns (input  [31:0]  x1, x2);
    return {8'((x1[31:24] + x2[31:24]) % 251),8'((x1[23:16] + x2[23:16]) % 241),8'((x1[15:8] + x2[15:8]) % 239),8'((x1[7:0] + x2[7:0]) % 233)};
    //return {{(x1[31:24] + x2[31:24]) % 251},8'((x1[23:16] + x2[23:16]) % 241),8'b11111111,8'b11111111};
  endfunction
  
  // function mul_rns;
  // input  [31:0]  x1;
  // input  [31:0]  x2;
  // begin
    // mul_rns = {(x1[31:24] * x2[31:24]) % 251,(x1[23:16] * x2[23:16]) % 241,(x1[15:8] * x2[15:8]) % 239,(x1[7:0] * x2[7:0]) % 233};
  // end
  // endfunction
  function [31:0] mul_rns (input  [31:0]  x1, x2);
    return {8'((x1[31:24] * x2[31:24]) % 251),8'((x1[23:16] * x2[23:16]) % 241),8'((x1[15:8] * x2[15:8]) % 239),8'((x1[7:0] * x2[7:0]) % 233)};
  endfunction
  
  always @(posedge clk)
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
        dummy <= add_rns(tap0,coef0);
        //y <= tap0 * coef0 + tap1*2 + tap2*3 + tap3*3 + tap4*2 + tap5;
        y <= add_rns(add_rns(add_rns(add_rns(add_rns(mul_rns(tap0,coef0),mul_rns(tap1,coef1)),mul_rns(tap2,coef2)),mul_rns(tap3,coef3)),mul_rns(tap4,coef4)),mul_rns(tap5,coef5));

        tap5 <= tap4;
        tap4 <= tap3;
        tap3 <= tap2;
        tap2 <= tap1;
        tap1 <= tap0;
        tap0 <= x;
    end
  end

endmodule
