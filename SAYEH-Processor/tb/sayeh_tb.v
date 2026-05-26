`timescale 1ns/1ps

module sayeh_tb;

reg clk;
reg ExternalReset;

wire ReadMem;
wire WriteMem;
wire [15:0] Addressbus;
wire [15:0] Databus;

reg [15:0] memory [0:63];
reg [15:0] mem_data;

Sayeh uut (
    .clk(clk),
    .ExternalReset(ExternalReset),
    .Databus(Databus),
    .Addressbus(Addressbus),
    .ReadMem(ReadMem),
    .WriteMem(WriteMem)
);

initial begin
    clk = 0;
    ExternalReset = 1;

    $readmemh("instructions.mem", memory);

    #50 ExternalReset = 0;

    #500 $finish;
end

always #10 clk = ~clk;

always @(posedge clk) begin
    if(ReadMem)
        mem_data <= memory[Addressbus];

    if(WriteMem)
        memory[Addressbus] <= Databus;
end

assign Databus = (ReadMem) ? mem_data : 16'bz;

endmodule
