module Sayeh (
    input clk,
    input ExternalReset,
    inout [15:0] Databus,
    output [15:0] Addressbus,
    output ReadMem,
    output WriteMem
);

wire [15:0] Instruction;
wire Cout, Zout;

datapath dp(
    .clk(clk),
    .Databus(Databus),
    .Addressbus(Addressbus),
    .Instruction(Instruction),
    .Cout(Cout),
    .Zout(Zout)
);

controller ctrl(
    .Instruction(Instruction),
    .ExternalReset(ExternalReset),
    .MemDataReady(1'b1),
    .clk(clk),
    .Cflag(Cout),
    .Zflag(Zout),
    .ReadMem(ReadMem),
    .WriteMem(WriteMem)
);

endmodule
