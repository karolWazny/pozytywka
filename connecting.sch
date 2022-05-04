<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(11:0)" />
        <signal name="Clk_50MHz" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="Reset" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27(3:0)" />
        <signal name="XLXN_28(3:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="Reset" />
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T15:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="saw">
            <timestamp>2022-5-4T20:58:50</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_2">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="saw" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_28(3:0)" name="pitch(3:0)" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="00" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_28(3:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2320" y="1264" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2(3:0)">
            <wire x2="2032" y1="1008" y2="1008" x1="1728" />
            <wire x2="2032" y1="784" y2="1008" x1="2032" />
            <wire x2="2320" y1="784" y2="784" x1="2032" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="2048" y1="1072" y2="1072" x1="1728" />
            <wire x2="2048" y1="848" y2="1072" x1="2048" />
            <wire x2="2320" y1="848" y2="848" x1="2048" />
        </branch>
        <branch name="XLXN_4(11:0)">
            <wire x2="2304" y1="1136" y2="1136" x1="1728" />
            <wire x2="2320" y1="912" y2="912" x1="2304" />
            <wire x2="2304" y1="912" y2="1136" x1="2304" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="928" y1="944" y2="944" x1="640" />
            <wire x2="928" y1="944" y2="1360" x1="928" />
            <wire x2="2240" y1="1360" y2="1360" x1="928" />
            <wire x2="2320" y1="1360" y2="1360" x1="2240" />
            <wire x2="2240" y1="1360" y2="1424" x1="2240" />
            <wire x2="2320" y1="1424" y2="1424" x1="2240" />
            <wire x2="1344" y1="944" y2="944" x1="928" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2800" y1="720" y2="720" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="720" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2800" y1="784" y2="784" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="784" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="2800" y1="848" y2="848" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="848" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2800" y1="912" y2="912" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="912" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2800" y1="976" y2="976" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="976" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2800" y1="1040" y2="1040" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1040" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2800" y1="1104" y2="1104" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1104" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2800" y1="1168" y2="1168" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1168" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2800" y1="1232" y2="1232" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1232" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2800" y1="1296" y2="1296" x1="2768" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1296" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="640" y="944" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="656" y="1296" name="Reset" orien="R180" />
        <branch name="Reset">
            <wire x2="864" y1="1296" y2="1296" x1="656" />
            <wire x2="864" y1="1200" y2="1296" x1="864" />
            <wire x2="1072" y1="1200" y2="1200" x1="864" />
            <wire x2="1072" y1="1200" y2="1296" x1="1072" />
            <wire x2="2320" y1="1296" y2="1296" x1="1072" />
            <wire x2="1104" y1="1136" y2="1136" x1="1072" />
            <wire x2="1072" y1="1136" y2="1200" x1="1072" />
        </branch>
        <instance x="1344" y="1168" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="2016" y1="944" y2="944" x1="1728" />
            <wire x2="2016" y1="720" y2="944" x1="2016" />
            <wire x2="2320" y1="720" y2="720" x1="2016" />
        </branch>
        <branch name="XLXN_28(3:0)">
            <wire x2="1344" y1="1136" y2="1136" x1="1312" />
        </branch>
        <instance x="1168" y="1104" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>