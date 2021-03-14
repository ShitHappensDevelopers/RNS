module addresser #(stage_length, group_length) (
input wire clock, reset,
input wire enable, //makes the addresser count up
input wire writemode, //read or write mode for addresser (asserted TRUE for writing to MEMORY)
output wire mem_we, //write enable for memory
output wire [group_length:0] mem_addr0, //memory addresses
output wire [group_length:0] mem_addr1,
output wire [group_length:0] tf_addr); //twiddle factor address

reg [stage_length+group_length:0] index;
// Bits 14-11 are the stage number, bits 10-1 are the group number, bit 0 is the item number
    always @(posedge clock) begin
        if (reset) begin
            index <= 0;
        //Initially: stage = 0, group = 0, item = 0
        end
        if (enable) begin
            index <= index + 2;
        end
    end
//Perform bit reversing and bit circulation
wire [group_length:0] data0;
wire [group_length:0] data1;

bitrev11 br0(index[group_length:0], data0);
bitrev11 br1(index[group_length:0]+1, data1);
bitcirc_r11 bc0(index[stage_length+group_length:group_length+1], data0, mem_addr0);
bitcirc_r11 bc1(index[stage_length+group_length:group_length+1], data1, mem_addr1);

assign mem_we = writemode;
//Get twiddle factor theta
//Address input to CORGEN module: theta = 2pi * (INPUT / 2^INPUT_WIDTH) radians
assign tf_addr = (index[group_length:0] >> (group_length+1-index[stage_length+group_length:group_length+1])) << (group_length-index[stage_length+group_length:group_length+1]);
endmodule



module bitrev11 #(group_length) (
input  wire [group_length:0] data_in,
output wire [group_length:0] data_out);

always @* begin
    for(i = 0; i <= group_length; i = i + 1) begin
        data_out[i] = data_in[group_length-i];
    end
end
endmodule



module bitcirc_r11 #(stage_length, group_length) (
input  wire [stage_length-1:0] n,
input  wire [group_length:0] data_in,
output wire [group_length:0] data_out);

wire [group_length:0] datas [0:stage_length-1]
//Bit circulates data_in to the right by n bits
for( genvar i = 0; i < stage_length; i++ )
begin
    if (i == 0) begin
        assign datas[i] = n[stage_length-i-1]
            ? {data_in[2**(stage_length-i-1)-1], data_in[group_length:2**(stage_length-i-1)]}
            : data_in;
    end
    else begin
        assign datas[i] = n[stage_length-i-1]
            ? {datas[i-1][2**(stage_length-i-1)-1], datas[i-1][group_length:2**(stage_length-i-1)]}
            : datas[i-1];
    end
end 
endmodule