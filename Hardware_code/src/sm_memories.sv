module data_memory
(
    input  logic clk, 
    input  logic write_enable, 
    input  logic [ 31:0 ] adress, 
    input  logic [ 31:0 ] write_data, 
    output logic [ 31:0 ] read_data
);
        
    logic [31:0] RAM[63:0];
    
    assign read_data = RAM[adress[31:2]]; // word aligned
    
    always_ff @(posedge clk) 
        if (write_enable) RAM[adress[31:2]] <= write_data; 
endmodule
   
   
    
module instruction_memory
(
    input logic  [ 31:0 ] adress, 
    output logic [ 31:0 ] read_data
);

    logic [31:0] RAM[63:0];
    initial $readmemh("memfile.dat", RAM);
    assign read_data = RAM[adress[31:2]]; // word aligned
	
    /*logic [7:0] RAM[255:0];
    initial $readmemh("memfile.dat", RAM);
    
    logic [7:0] b0, b1, b2, b3;
    assign b3  = RAM[adress[31:0]]; // word aligned 
    assign b2  = RAM[adress[31:0]+1]; // word aligned 
    assign b1  = RAM[adress[31:0]+2]; // word aligned 
    assign b0  = RAM[adress[31:0]+3]; // word aligned
    assign  read_data = {b3,b2,b1,b0};*/
endmodule   