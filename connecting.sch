<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="Clk_50MHz" />
        <signal name="Reset" />
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
        <signal name="mRESET" />
        <signal name="melody" />
        <signal name="XLXN_33(3:0)" />
        <signal name="XLXN_37(11:0)" />
        <signal name="XLXN_38" />
        <signal name="CE" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Reset" />
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
        <port polarity="Input" name="mRESET" />
        <port polarity="Input" name="melody" />
        <port polarity="Input" name="CE" />
        <blockdef name="DACWrite">
            <timestamp>2022-5-3T22:49:39</timestamp>
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
            <timestamp>2022-5-12T10:56:40</timestamp>
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
        <blockdef name="melodia">
            <timestamp>2022-5-12T12:2:28</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="XLXN_38" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_3(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_37(11:0)" name="DATA(11:0)" />
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
        <block symbolname="saw" name="XLXI_5">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_33(3:0)" name="pitch(3:0)" />
            <blockpin signalname="XLXN_38" name="Start" />
            <blockpin signalname="XLXN_3(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_37(11:0)" name="DATA(11:0)" />
        </block>
        <block symbolname="melodia" name="XLXI_7">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="mRESET" name="RESET" />
            <blockpin signalname="XLXN_33(3:0)" name="note(3:0)" />
            <blockpin signalname="melody" name="melody" />
        </block>
        <block symbolname="saw" name="XLXI_8">
            <blockpin name="Clk_50MHz" />
            <blockpin name="pitch(3:0)" />
            <blockpin name="Start" />
            <blockpin name="Cmd(3:0)" />
            <blockpin name="Addr(3:0)" />
            <blockpin name="DATA(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2464" y="960" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_3(3:0)">
            <wire x2="2400" y1="288" y2="288" x1="2352" />
            <wire x2="2400" y1="288" y2="480" x1="2400" />
            <wire x2="2464" y1="480" y2="480" x1="2400" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="2384" y1="352" y2="352" x1="2352" />
            <wire x2="2384" y1="352" y2="544" x1="2384" />
            <wire x2="2464" y1="544" y2="544" x1="2384" />
        </branch>
        <branch name="Reset">
            <wire x2="2464" y1="992" y2="992" x1="1808" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2944" y1="416" y2="416" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="416" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2944" y1="480" y2="480" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="480" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="2944" y1="544" y2="544" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="544" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2944" y1="608" y2="608" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="608" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2944" y1="672" y2="672" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="672" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2944" y1="736" y2="736" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="736" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2944" y1="800" y2="800" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="800" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2944" y1="864" y2="864" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="864" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2944" y1="928" y2="928" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="928" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2944" y1="992" y2="992" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="992" name="FPGA_INIT_B" orien="R0" />
        <branch name="mRESET">
            <wire x2="1936" y1="752" y2="752" x1="1824" />
        </branch>
        <branch name="melody">
            <wire x2="1936" y1="880" y2="880" x1="1824" />
        </branch>
        <branch name="XLXN_33(3:0)">
            <wire x2="1968" y1="416" y2="416" x1="1952" />
            <wire x2="1952" y1="416" y2="528" x1="1952" />
            <wire x2="2352" y1="528" y2="528" x1="1952" />
            <wire x2="2352" y1="528" y2="624" x1="2352" />
            <wire x2="2352" y1="624" y2="624" x1="2320" />
        </branch>
        <branch name="XLXN_37(11:0)">
            <wire x2="2368" y1="416" y2="416" x1="2352" />
            <wire x2="2368" y1="416" y2="608" x1="2368" />
            <wire x2="2464" y1="608" y2="608" x1="2368" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="2448" y1="224" y2="224" x1="2352" />
            <wire x2="2448" y1="224" y2="416" x1="2448" />
            <wire x2="2464" y1="416" y2="416" x1="2448" />
        </branch>
        <branch name="CE">
            <wire x2="1936" y1="688" y2="688" x1="1776" />
        </branch>
        <instance x="1968" y="448" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1936" y="784" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1824" y="752" name="mRESET" orien="R180" />
        <iomarker fontsize="28" x="1808" y="992" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="1824" y="880" name="melody" orien="R180" />
        <iomarker fontsize="28" x="1776" y="688" name="CE" orien="R180" />
        <iomarker fontsize="28" x="1840" y="624" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="1920" y1="624" y2="624" x1="1840" />
            <wire x2="1936" y1="624" y2="624" x1="1920" />
            <wire x2="1920" y1="624" y2="1056" x1="1920" />
            <wire x2="2400" y1="1056" y2="1056" x1="1920" />
            <wire x2="2464" y1="1056" y2="1056" x1="2400" />
            <wire x2="2400" y1="1056" y2="1120" x1="2400" />
            <wire x2="2464" y1="1120" y2="1120" x1="2400" />
            <wire x2="1968" y1="224" y2="224" x1="1920" />
            <wire x2="1920" y1="224" y2="624" x1="1920" />
        </branch>
        <instance x="3104" y="368" name="XLXI_8" orien="R0">
        </instance>
    </sheet>
</drawing>