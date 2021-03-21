`include "common.sv"

module add_rns #(parameter b0, parameter b1, parameter b2, parameter b3)
(
    input  [31:0]  x1,
    input  [31:0]  x2,
    output [31:0]  y
);

assign y[7:0] = (x1[7:0] + x2[7:0]) % b0;
assign y[15:8] = (x1[15:8] + x2[15:8]) % b1;
assign y[23:16] = (x1[23:16] + x2[23:16]) % b2;
assign y[31:24] = (x1[31:24] + x2[31:24]) % b3;
    
endmodule



module mul_rns #(parameter b0, parameter b1, parameter b2, parameter b3)
(
    input  [31:0]  x1,
    input  [31:0]  x2,
    output [31:0]  y
);

assign y[7:0] = (x1[7:0] * x2[7:0]) % b0;
assign y[15:8] = (x1[15:8] * x2[15:8]) % b1;
assign y[23:16] = (x1[23:16] * x2[23:16]) % b2;
assign y[31:24] = (x1[31:24] * x2[31:24]) % b3;
    
endmodule



module convertor_int_to_rns #(parameter b0, parameter b1, parameter b2, parameter b3)
(
    input  [31:0]  int_number,
    output [31:0]  rns
);

assign rns[7:0] = (int_number[31] == 1 ? int_number[31:0] - `INT_RNS_DELTA : int_number[31:0]) % b0;
assign rns[15:8] = (int_number[31] == 1 ? int_number[31:0] - `INT_RNS_DELTA : int_number[31:0]) % b1;
assign rns[23:16] = (int_number[31] == 1 ? int_number[31:0] - `INT_RNS_DELTA : int_number[31:0]) % b2;
assign rns[31:24] = (int_number[31] == 1 ? int_number[31:0] - `INT_RNS_DELTA : int_number[31:0]) % b3;
    
endmodule



module convertor_rns_to_int #(parameter a0, parameter a1, parameter a2, parameter a3)
(
    input  [31:0]  rns,
    output [31:0]  int_number
);

reg [45:0] aa0 = 32'd3021585941;
reg [45:0] aa1 = 32'd1099363434;
reg [45:0] aa2 = 32'd1663315003;
reg [45:0] aa3 = 32'd952860257;
reg [45:0] s = 32'd3368562317;
wire [31:0] temp;

// always @* begin
    // temp = (aa0*{1'b0,rns[7:0]} + aa1*{1'b0,rns[15:8]} + aa2*{1'b0,rns[23:16]} + aa3*{1'b0,rns[31:24]}) % (s);
    // if (temp >= `RNS_MIDDLE_POINT) int_number = temp + `INT_RNS_DELTA;
    // else int_number = temp;
// end

assign temp = (aa0*{1'b0,rns[7:0]} + aa1*{1'b0,rns[15:8]} + aa2*{1'b0,rns[23:16]} + aa3*{1'b0,rns[31:24]}) % (s);
assign int_number = temp >= `RNS_MIDDLE_POINT ? temp + `INT_RNS_DELTA : temp;
    
endmodule