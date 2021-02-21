module board_top(input logic clk, reset, 
        output logic [31:0] WriteData, DataAdr, 
        output logic MemWrite);
        
        top top(clk, reset, WriteData, DataAdr, MemWrite);
endmodule