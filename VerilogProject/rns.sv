module rns_adder #(parameter b0, parameter b1, parameter b2, parameter b3)
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



module rns_multiplier #(parameter b0, parameter b1, parameter b2, parameter b3)
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

assign rns[7:0] = int_number[31:0] % b0;
assign rns[15:8] = int_number[31:0] % b1;
assign rns[23:16] = int_number[31:0] % b2;
assign rns[31:24] = int_number[31:0] % b3;
    
endmodule



module convertor_rns_to_int #(parameter a0, parameter a1, parameter a2, parameter a3)
(
    input  [31:0]  rns,
    output [31:0]  int_number
);

assign int_number[31:0] = (a0*rns[7:0] + a1*rns[15:8] + a2*rns[23:16] + a3*rns[31:24]) % (a0*a1*a2*a3);
    
endmodule