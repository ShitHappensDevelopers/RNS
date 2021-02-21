module sm_register_file
(
    input         clk,
    input         rst_p,
    input  [ 3:0] read_adress0,
    input  [ 3:0] read_adress1,
    input  [ 3:0] read_adress2,
    input  [ 3:0] write_adress3,
    output [31:0] read_data0,
    output [31:0] read_data1,
    output [31:0] read_data2,
    input  [31:0] write_data3,
    input         write_enable3,
    input  [31:0] r15
);
        
    logic [31:0] rf[14:0];
    
    // three ported register file 
    // read two ports combinationally 
    // write third port on rising edge of clock 
    // register 15 reads PC+8 instead
    
    always_ff @(posedge clk or posedge rst_p)
        if(rst_p)
            rf <= '{default: 32'b0};
        else
            if (write_enable3) rf[write_adress3] <= write_data3;
    assign read_data0 = (read_adress0 == 4'b1111) ? r15 : rf[read_adress0];
    assign read_data1 = (read_adress1 == 4'b1111) ? r15 : rf[read_adress1]; 
    assign read_data2 = (read_adress2 == 4'b1111) ? r15 : rf[read_adress2];
    
endmodule