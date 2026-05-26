module datapath(
    input clk,
    inout [15:0] Databus,
    output [15:0] Addressbus,
    output [15:0] Instruction,
    output Cout,
    output Zout,

    input ResetPC, PCplusI, PCplus1, RplusI, Rplus0,
    input Rs_on_AddressUnitRSide,
    input Rd_on_AddressUnitRSide,
    input EnablePC,

    input B15to0, AandB, AorB, notB,
    input shlB, shrB, AaddB, AsubB,
    input AmulB, AcmpB,

    input RFLwrite, RFHwrite,
    input WPreset, WPadd,
    input IRload,
    input SRload,

    input Address_on_Databus,
    input ALU_on_Databus,
    input IR_on_LOpndBus,
    input IR_on_HOpndBus,
    input RFright_on_OpndBus,

    input Cset, Creset, Zset, Zreset,
    input Shadow
);

wire [15:0] Right, Left, OpndBus;
wire [15:0] ALUout, IRout;
wire [15:0] Address;
wire [15:0] AddressUnitRSideBus;

wire SRCin, SRZin;
wire SRZout, SRCout;

wire [2:0] WPout;
wire [1:0] Laddr, Raddr;

assign Addressbus = Address;
assign Instruction = IRout;
assign Zout = SRZout;
assign Cout = SRCout;

assign Laddr = (~Shadow) ? IRout[11:10] : IRout[3:2];
assign Raddr = (~Shadow) ? IRout[9:8]  : IRout[1:0];

endmodule
