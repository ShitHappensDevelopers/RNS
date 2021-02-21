module sm_clk_divider
#(
    parameter shift  = 16,
              bypass = 0
)
(
    input              clkIn,
    input              rst_p,
    input   [  3:0 ]   clkDevide,
    input              clkEnable,
    output             clkOut
);
    logic   [ 31:0 ]   counter;
    logic   [ 31:0 ]   counterNext;
     assign counterNext = counter + 1;
    
    sm_register_we r_cntr(clkIn, rst_p, clkEnable, counterNext, counter);

    assign clkOut = bypass ? clkIn 
                           : counter[shift + clkDevide];
endmodule



module sm_register_we
#(
    parameter SIZE = 32
)
(
    input                    clk,
    input                    rst_p,
    input                    write_enable,
    input   [ SIZE - 1 : 0 ] dataIn,
    output  [ SIZE - 1 : 0 ] dataOut
);
    logic [ SIZE - 1 : 0 ] dividerReg;

    always_ff @(posedge clk or posedge rst_p)
        if(rst_p)
            dividerReg <= { SIZE { 1'b0}};
        else
            if(write_enable) dividerReg <= dataIn;

    assign dataOut = dividerReg;
endmodule