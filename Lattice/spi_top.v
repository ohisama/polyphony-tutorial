module spi_top (
    input  wire SPI_MISO, 
    output wire SPI_MOSI, 
    output wire SPI_SCLK, 
    output wire SPI_CS_N, 

    input wire clk, 

    output wire RED_N,
    output wire BLU_N,
    output wire GREEN_N);

    //----------------------------------------------------------------
    wire sbus_ack;
    wire sbus_stb; 
    wire sbus_rw; 
    wire [7:0] sbus_addr;
    wire [7:0] sbus_data_in;
    wire [7:0] sbus_data_out;
    wire sbus_led;

    assign sbus_ack = 1'b0;
    //assign sbus_stb = 1'b0;
    //assign sbus_rw = 1'b0;

    //----------------------------------------------------------------
    system_bus_sbus sbus(
        .clk(clk),
        .rst(1'b0),
        .ack(sbus_ack),
        .data_in(sbus_data_in),
        .stb(sbus_stb),
        .rw(sbus_rw),
        .addr(sbus_addr),
        .data_out(sbus_data_out),
        .led(sbus_led)
    );

    //----------------------------------------------------------------
//    SB_SPI #(.BUS_ADDR74("0b0000"))
//      SB_SPI_INST_LT 
//       (.SBCLKI(clk),
//        .SBRWI(1'b0),
//        .SBSTBI(sb_stb_ix),
//        .SBADRI7(sb_adr_ix[7]),
//        .SBADRI6(sb_adr_ix[6]),
//        .SBADRI5(sb_adr_ix[5]),
//        .SBADRI4(sb_adr_ix[4]),
//        .SBADRI3(sb_adr_ix[3]),
//        .SBADRI2(sb_adr_ix[2]),
//        .SBADRI1(sb_adr_ix[1]),
//        .SBADRI0(sb_adr_ix[0]),
//        .SBDATI7(sb_dat_ix[7]),
//        .SBDATI6(sb_dat_ix[6]),
//        .SBDATI5(sb_dat_ix[5]),
//        .SBDATI4(sb_dat_ix[4]),
//        .SBDATI3(sb_dat_ix[3]),
//        .SBDATI2(sb_dat_ix[2]),
//        .SBDATI1(sb_dat_ix[1]),
//        .SBDATI0(sb_dat_ix[0]),
//        .MI(SPI2_MI),
//        .SI(SPI2_SI),
//        .SCKI(SPI2_SCKi),
//        .SCSNI(SPI2_SCSNi),
//        .SBDATO7(hard00_SBDATo[7]),
//        .SBDATO6(hard00_SBDATo[6]),
//        .SBDATO5(hard00_SBDATo[5]),
//        .SBDATO4(hard00_SBDATo[4]),
//        .SBDATO3(hard00_SBDATo[3]),
//        .SBDATO2(hard00_SBDATo[2]),
//        .SBDATO1(hard00_SBDATo[1]),
//        .SBDATO0(hard00_SBDATo[0]),
//        .SBACKO(hard00_SBACKO),
//        .SPIIRQ(SPIPIRQ[0]),
//        .SPIWKUP(SPIPWKUP[0]),
//        .SO(SPI2_SO),
//        .SOE(SPI2_SOoe),
//        .MO(SPI2_MO),
//        .MOE(SPI2_MOoe),
//        .SCKO(SPI2_SCKo),
//        .SCKOE(SPI2_SCKoe),
//        .MCSNO3(SPI2_MCSNo[3]),
//        .MCSNO2(SPI2_MCSNo[2]),
//        .MCSNO1(SPI2_MCSNo[1]),
//        .MCSNO0(SPI2_MCSNo[0]),
//        .MCSNOE3(SPI2_MCSNoe[3]),
//        .MCSNOE2(SPI2_MCSNoe[2]),
//        .MCSNOE1(SPI2_MCSNoe[1]),
//        .MCSNOE0(SPI2_MCSNoe[0]));
endmodule

