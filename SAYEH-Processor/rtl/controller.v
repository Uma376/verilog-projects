module controller(
    input [15:0] Instruction,
    input ExternalReset,
    input MemDataReady,
    input clk,
    input Cflag,
    input Zflag,

    output reg ResetPC,
    output reg PCplusI,
    output reg PCplus1,
    output reg RplusI,
    output reg Rplus0,
    output reg Rs_on_AddressUnitRSide,
    output reg Rd_on_AddressUnitRSide,
    output reg EnablePC,

    output reg B15to0,
    output reg AandB,
    output reg AorB,
    output reg notB,
    output reg shlB,
    output reg shrB,
    output reg AaddB,
    output reg AsubB,
    output reg AmulB,
    output reg AcmpB,

    output reg RFLwrite,
    output reg RFHwrite,
    output reg WPreset,
    output reg WPadd,
    output reg IRload,
    output reg SRload,

    output reg Address_on_Databus,
    output reg ALU_on_Databus,
    output reg IR_on_LOpndBus,
    output reg IR_on_HOpndBus,
    output reg RFright_on_OpndBus,

    output reg Cset,
    output reg Creset,
    output reg Zset,
    output reg Zreset,

    output reg ReadMem,
    output reg WriteMem,
    output reg Shadow
);

// Simplified controller skeleton generated from SAYEH report

always @(*) begin
    ResetPC = 0;
    PCplusI = 0;
    PCplus1 = 0;
    EnablePC = 0;
    ReadMem = 0;
    WriteMem = 0;
end

endmodule
