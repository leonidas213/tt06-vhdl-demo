LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity tt_um_smallScpu is
  port (
    ui_in   : in  std_logic_vector(7 downto 0);
    uo_out  : out std_logic_vector(7 downto 0);
    uio_in  : in  std_logic_vector(7 downto 0);
    uio_out : out std_logic_vector(7 downto 0);
    uio_oe  : out std_logic_vector(7 downto 0);
    ena     : in  std_logic;
    clk     : in  std_logic;
    rst_n   : in  std_logic
  );
end entity;

architecture Behavioral of tt_um_smallScpu is
  signal muxA            : std_logic;
  signal s0              : std_logic_vector(15 downto 0);
  signal s1              : std_logic_vector(15 downto 0);
  signal s2              : std_logic_vector(15 downto 0);
  signal muxB            : std_logic_vector(2 downto 0);
  signal s3              : std_logic_vector(15 downto 0);
  signal s4              : std_logic_vector(15 downto 0);
  signal s5              : std_logic_vector(15 downto 0);
  signal s6              : std_logic_vector(15 downto 0);
  signal s7              : std_logic_vector(15 downto 0);
  signal OpcodeDebug     : std_logic_vector(15 downto 0);
  signal s8              : std_logic_vector(3 downto 0);
  signal s9              : std_logic_vector(3 downto 0);
  signal OPcode          : std_logic_vector(7 downto 0);
  signal s10             : std_logic_vector(7 downto 0);
  signal st              : std_logic;
  signal s11             : std_logic;
  signal ld              : std_logic;
  signal s12             : std_logic_vector(15 downto 0);
  signal WDmux           : std_logic_vector(2 downto 0);
  signal s13             : std_logic_vector(15 downto 0);
  signal Din             : std_logic_vector(15 downto 0);
  signal s14             : std_logic_vector(15 downto 0);
  signal RandomNUM       : std_logic_vector(15 downto 0);
  signal s15             : std_logic_vector(15 downto 0);
  signal s16             : std_logic_vector(1 downto 0);
  signal s17             : std_logic;
  signal s18             : std_logic;
  signal s19             : std_logic;
  signal s20             : std_logic;
  signal s21             : std_logic;
  signal br              : std_logic_vector(2 downto 0);
  signal s22             : std_logic;
  signal sf              : std_logic;
  signal s23             : std_logic;
  signal s24             : std_logic;
  signal intr            : std_logic;
  signal interEn         : std_logic;
  signal FlagOut         : std_logic_vector(15 downto 0);
  signal InterLock       : std_logic;
  signal imm             : std_logic;
  signal s25             : std_logic;
  signal s26             : std_logic;
  signal s27             : std_logic;
  signal Reti            : std_logic;
  signal s28             : std_logic;
  signal s29             : std_logic;
  signal inter           : std_logic;
  signal WE              : std_logic;
  signal iem             : std_logic_vector(1 downto 0);
  signal s30             : std_logic_vector(11 downto 0);
  signal s31             : std_logic;
  signal PC_out          : std_logic_vector(11 downto 0);
  signal s32             : std_logic_vector(11 downto 0);
  signal s33             : std_logic_vector(11 downto 0);
  signal s34             : std_logic_vector(11 downto 0);
  signal s35             : std_logic_vector(11 downto 0);
  signal p_abs           : std_logic;
  signal s36             : std_logic_vector(11 downto 0);
  signal s37             : std_logic_vector(11 downto 0);
  signal s38             : std_logic;
  signal s39             : std_logic_vector(11 downto 0);
  signal s40             : std_logic;
  signal ioW             : std_logic;
  signal s41             : std_logic;
  signal s42             : std_logic_vector(3 downto 0);
  signal outputToOutside : std_logic_vector(3 downto 0);
  signal s43             : std_logic;
  signal s44             : std_logic;
  signal s45             : std_logic;
  signal s46             : std_logic;
  signal s47             : std_logic;
  signal s48             : std_logic;
  signal s49             : std_logic;
  signal s50             : std_logic;
  signal s51             : std_logic_vector(7 downto 0);
  signal s52             : std_logic_vector(7 downto 0);
  signal s53             : std_logic;
  signal s54             : std_logic_vector(7 downto 0);
  signal s55             : std_logic;
  signal s56             : std_logic;
  signal sel             : std_logic_vector(3 downto 0);
  signal s57             : std_logic_vector(15 downto 0);
  signal s58             : std_logic_vector(15 downto 0);
  signal s59             : std_logic_vector(15 downto 0);
  signal s60             : std_logic_vector(15 downto 0);
  signal s61             : std_logic_vector(15 downto 0);
  signal s62             : std_logic_vector(15 downto 0);
  signal s63             : std_logic_vector(15 downto 0);
  signal s64             : std_logic_vector(15 downto 0);
  signal s65             : std_logic_vector(15 downto 0);
  signal s66             : std_logic_vector(15 downto 0);
  signal s67             : std_logic_vector(15 downto 0);
  signal s68             : std_logic_vector(15 downto 0);
  signal s69             : std_logic_vector(15 downto 0);
  signal s70             : std_logic;
  signal s71             : std_logic;
  signal s72             : std_logic;
  signal s73             : std_logic;
  signal s74             : std_logic;
  signal s75             : std_logic;
  signal aluOp           : std_logic_vector(4 downto 0);
  signal s76             : std_logic_vector(31 downto 0);
  signal s77             : std_logic;
  signal s78             : std_logic;
  signal s79             : std_logic;
  signal s80             : std_logic;
  signal s81             : std_logic;
  signal s82             : std_logic_vector(15 downto 0);
  signal s83             : std_logic_vector(15 downto 0);
  signal s84             : std_logic;
  signal s85             : std_logic;
  signal s86             : std_logic;
  signal s87             : std_logic;
  signal s88             : std_logic;
  signal s89             : std_logic;
  signal s90             : std_logic;
  signal s91             : std_logic;
  signal s92             : std_logic;
  signal s93             : std_logic;
  signal s94             : std_logic;
  signal s95             : std_logic;
  signal s96             : std_logic;
  signal s97             : std_logic;
  signal s98             : std_logic;
  signal s99             : std_logic;
  signal s100            : std_logic;
  signal s101            : std_logic;
  signal s102            : std_logic;
  signal s103            : std_logic;
  signal s104            : std_logic;
  signal s105            : std_logic;
  signal s106            : std_logic;
  signal s107            : std_logic;
  signal s108            : std_logic;
  signal s109            : std_logic;
  signal s110            : std_logic;
  signal s111            : std_logic;
  signal s112            : std_logic;
  signal s113            : std_logic;
  signal s114            : std_logic;
  signal s115            : std_logic;
  signal s116            : std_logic;
  signal s117            : std_logic;
  signal s118            : std_logic;
  signal s119            : std_logic;
  signal stPC            : std_logic;
  signal RandomNUMSel    : std_logic;
  signal ioR             : std_logic;
  signal s120            : std_logic_vector(6 downto 0);
  signal s121            : std_logic_vector(6 downto 0);
  signal s122            : std_logic;
  signal s123            : std_logic;
  signal s124            : std_logic;
  signal s125            : std_logic;
  signal s126            : std_logic;
  signal s127            : std_logic;
  signal s128            : std_logic;
  signal s129            : std_logic;
  signal s130            : std_logic;
  signal s131            : std_logic;
  signal src2D           : std_logic;
  signal s132            : std_logic;
  signal s133            : std_logic;
  signal s134            : std_logic;
  signal s135            : std_logic;
  signal s136            : std_logic;
  signal alu2D           : std_logic;
  signal s137            : std_logic;
  signal s138            : std_logic;
  signal s139            : std_logic;
  signal s140            : std_logic;
  signal s141            : std_logic;
  signal s142            : std_logic;
  signal s143            : std_logic_vector(7 downto 0);
  signal s144            : std_logic_vector(7 downto 0);
  signal s145            : std_logic;
  signal s146            : std_logic;
  signal s147            : std_logic_vector(7 downto 0);
  signal s148            : std_logic_vector(7 downto 0);
  signal s149            : std_logic;
  signal s150            : std_logic;
  signal s151            : std_logic_vector(3 downto 0);
  signal io_outEnable    : std_logic_vector(3 downto 0);
begin
  DIG_JK_FF_ASinst0: entity DIG_JK_FF_AS
    generic map (
      tempval => '0')
    port map (
      Set  => '0',
      J    => '1',
      C    => clk,
      K    => '1',
      Clr  => rst_n,
      Q    => s145,
      notQ => s142);
                s146    <= not clk;
                s43     <= uio_in(0);
                s44     <= uio_in(1);
                s45     <= uio_in(2);
                s46     <= uio_in(3);
                s47     <= uio_in(4);
                s48     <= uio_in(5);
                s49     <= uio_in(6);
                s50     <= uio_in(7);
                Din(0)  <= s43;
                Din(1)  <= s44;
                Din(2)  <= s45;
                Din(3)  <= s46;
                Din(4)  <= s47;
                Din(5)  <= s48;
                Din(6)  <= s49;
                Din(7)  <= s50;
                Din(8)  <= '0';
                Din(9)  <= '0';
                Din(10) <= '0';
                Din(11) <= '0';
                Din(12) <= '0';
                Din(13) <= '0';
                Din(14) <= '0';
                Din(15) <= '0';
                s51(0)  <= s43;
                s51(1)  <= s44;
                s51(2)  <= s45;
                s51(3)  <= s46;
                s51(4)  <= s47;
                s51(5)  <= s48;
                s51(6)  <= s49;
                s51(7)  <= s50;
  DEMUX_GATE_BUS_1inst1: entity DEMUX_GATE_BUS_1
    generic map (
      Bits    => 8,
      tempval => 0)
    port map (
      sel   => s142,
      p_in  => ui_in,
      out_0 => s143,
      out_1 => s144);
                s11 <= (s142 and s146);
                s27 <= not s11;
                s29 <= not s11;
                s31 <= not s11;
                s38 <= not s11;
                s53 <= not s11;
  gate2: entity DIG_Register_BUS
    generic map (
      Bits => 8)
    port map (
      D  => s143,
      C  => s146,
      en => s145,
      Q  => s147);
  gate3: entity DIG_Register_BUS
    generic map (
      Bits => 8)
    port map (
      D  => s144,
      C  => s146,
      en => s142,
      Q  => s148);
                OpcodeDebug(7 downto 0)  <= s148;
                OpcodeDebug(15 downto 8) <= s147;
  singExtendinst4: entity singExtend
      port map (
      inst => OpcodeDebug,
      n4S  => s4,
      n8SD => s5,
      n4D  => s6);
                s8     <= OpcodeDebug(3 downto 0);
                s9     <= OpcodeDebug(7 downto 4);
                OPcode <= OpcodeDebug(15 downto 8);
                s120   <= OPcode(6 downto 0);
                imm    <= OPcode(7);
  MUX_GATE_BUS_1inst5: entity MUX_GATE_BUS_1
    generic map (
      Bits => 7)
    port map (
      sel   => imm,
      in_0  => s120,
      in_1  => "0000000",
      p_out => s121);
                s128 <= s121(0);
                s127 <= s121(1);
                s126 <= s121(2);
                s125 <= s121(3);
                s124 <= s121(4);
                s123 <= s121(5);
                s122 <= s121(6);
  controllogicinst6: entity controllogic
      port map (
      A      => s122,
      B      => s123,
      C      => s124,
      D      => s125,
      E      => s126,
      F      => s127,
      G      => s128,
      muxb0  => s129,
      muxb1  => s130,
      muxb2  => s131,
      src2D  => src2D,
      aluop0 => s132,
      aluop1 => s133,
      aluop2 => s134,
      aluop3 => s135,
      aluop4 => s136,
      WE     => WE,
      sf     => sf,
      alu2D  => alu2D,
      iem0   => s137,
      iem1   => s138,
      br0    => s139,
      br1    => s140,
      br2    => s141,
      muxA   => muxA,
      ld     => ld,
      st     => st,
      p_abs  => p_abs,
      ioW    => ioW,
      ioR    => ioR,
      stPC   => stPC,
      Reti   => Reti,
      rand   => RandomNUMSel);
                WDmux(0) <= (stPC or ld or RandomNUMSel);
                WDmux(1) <= (ioR or stPC);
                WDmux(2) <= (RandomNUMSel or RandomNUMSel);
                muxB(0)  <= s131;
                muxB(1)  <= s130;
                muxB(2)  <= s129;
                aluOp(0) <= s136;
                aluOp(1) <= s135;
                aluOp(2) <= s134;
                aluOp(3) <= s133;
                aluOp(4) <= s132;
                br(0)    <= s141;
                br(1)    <= s140;
                br(2)    <= s139;
                iem(0)   <= s138;
                iem(1)   <= s137;
  ImReginst7: entity ImReg
      port map (
      en   => imm,
      iem  => iem,
      C    => s11,
      inst => OpcodeDebug,
      imm  => s3);
                s16 <= br(1 downto 0);
                sel <= aluOp(3 downto 0);
  MUX_GATE_BUS_1inst8: entity MUX_GATE_BUS_1
    generic map (
      Bits => 16)
    port map (
      sel   => muxA,
      in_0  => s0,
      in_1  => s1,
      p_out => s2);
  MUX_GATE_BUS_3inst9: entity MUX_GATE_BUS_3
    generic map (
      Bits => 16)
    port map (
      sel   => muxB,
      in_0  => s1,
      in_1  => "0000000000000000",
      in_2  => s3,
      in_3  => "0000000000000000",
      in_4  => "0000000000000000",
      in_5  => s4,
      in_6  => s5,
      in_7  => s6,
      p_out => s7);
  DIG_RAMDualPortinst10: entity DIG_RAMDualPort -- mem
  generic map (
    Bits     => 16,
    AddrBits => 8) port map (
    A   => s10,
    Din => s1,
    str => st,
    C   => s11,
    ld  => ld,
    D   => s12);
  MUX_GATE_BUS_3inst11: entity MUX_GATE_BUS_3
    generic map (
      Bits => 16)
    port map (
      sel   => WDmux,
      in_0  => s13,
      in_1  => s12,
      in_2  => Din,
      in_3  => s14,
      in_4  => "0000000000000000",
      in_5  => RandomNUM,
      in_6  => "0000000000000000",
      in_7  => "0000000000000000",
      p_out => s15);
  MUX_GATE_2inst12: entity MUX_GATE_2
    port map (
      sel   => s16,
      in_0  => '0',
      in_1  => s17,
      in_2  => s18,
      in_3  => s19,
      p_out => s20);
                 s21 <= (s20 xor br(2));
  gate13: entity DIG_Register -- Carry
    port map (
    D  => s22,
    C  => s11,
    en => sf,
    Q  => s17);
  gate14: entity DIG_Register -- Zero
  port map (
    D  => s23,
    C  => s11,
    en => sf,
    Q  => s18);
  gate15: entity DIG_Register -- Neg
  port map (
    D  => s24,
    C  => s11,
    en => sf,
    Q  => s19);
  gate16: entity DIG_Register -- inter1
  port map (
    D  => intr,
    C  => s11,
    en => sf,
    Q  => interEn);
                 intr <= (not InterLock and not imm and s25 and not interEn);
  DIG_D_FFinst17: entity DIG_D_FF -- *
  generic map (
    tempval => '0') port map (
    D => s26,
    C => s27,
    Q => InterLock);
                 s26 <= ((InterLock and not Reti) or intr);
  DIG_D_FFinst18: entity DIG_D_FF -- *
  generic map (
    tempval => '0') port map (
    D => s28,
    C => s29,
    Q => s25);
                 s28 <= ((s25 and not Reti) or inter);
  gate19: entity RegisterBlock
      port map (
      DataIn => s15,
      WE     => WE,
      clk    => s11,
      src    => s8,
      Dest   => s9,
      RDest  => s0,
      Rsrc   => s1);
  gate20: entity DIG_Register_BUS -- PC
  generic map (
    Bits => 12) port map (
    D  => s30,
    C  => s31,
    en => '1',
    Q  => PC_out);
  MUX_GATE_BUS_1inst21: entity MUX_GATE_BUS_1
    generic map (
      Bits => 12)
    port map (
      sel   => p_abs,
      in_0  => s35,
      in_1  => s33,
      p_out => s36);
  gate22: entity DIG_Register_BUS
    generic map (
      Bits => 12)
    port map (
      D  => s36,
      C  => s38,
      en => intr,
      Q  => s39);
  MUX_GATE_BUS_1inst23: entity MUX_GATE_BUS_1
    generic map (
      Bits => 12)
    port map (
      sel   => Reti,
      in_0  => s37,
      in_1  => s39,
      p_out => s30);
                 s41 <= (s40 and ioW);
  gate24: entity DIG_Register_BUS
    generic map (
      Bits => 4)
    port map (
      D  => s42,
      C  => s11,
      en => s41,
      Q  => outputToOutside);
  gate25: entity DIG_Register_BUS
    generic map (
      Bits => 8)
    port map (
      D  => s52,
      C  => s53,
      en => inter,
      Q  => s54);
  MUX_GATE_BUS_1inst26: entity MUX_GATE_BUS_1
    generic map (
      Bits => 8)
    port map (
      sel   => InterLock,
      in_0  => s51,
      in_1  => s54,
      p_out => s52);
  MUX_GATE_BUS_4inst27: entity MUX_GATE_BUS_4
    generic map (
      Bits => 16)
    port map (
      sel   => sel,
      in_0  => s7,
      in_1  => s57,
      in_2  => s58,
      in_3  => s59,
      in_4  => s60,
      in_5  => s61,
      in_6  => s62,
      in_7  => s63,
      in_8  => s64,
      in_9  => s65,
      in_10 => s66,
      in_11 => s67,
      in_12 => s68,
      in_13 => s69,
      in_14 => "0000000000000000",
      in_15 => "0000000000000000",
      p_out => s13);
  MUX_GATE_4inst28: entity MUX_GATE_4
    port map (
      sel   => sel,
      in_0  => '0',
      in_1  => s71,
      in_2  => s72,
      in_3  => '0',
      in_4  => '0',
      in_5  => '0',
      in_6  => '0',
      in_7  => '0',
      in_8  => s73,
      in_9  => s74,
      in_10 => s75,
      in_11 => '0',
      in_12 => '0',
      in_13 => '0',
      in_14 => '0',
      in_15 => '0',
      p_out => s22);
                 s70 <= (aluOp(4) and s17);
  gate29: entity DIG_Register_BUS -- seed
  generic map (
    Bits => 16) port map (
    D  => s1,
    C  => s11,
    en => s81,
    Q  => s82);
                 s81 <= (s84 and ioW);
  DIG_JK_FFinst30: entity DIG_JK_FF
    generic map (
      tempval => '0')
    port map (
      J => s85,
      C => s11,
      K => s85,
      Q => s79);
  DIG_D_FF_ASinst31: entity DIG_D_FF_AS
    port map (
      Set => s87,
      D   => s88,
      C   => s11,
      Clr => s86,
      Q   => s89);
  DIG_D_FF_ASinst32: entity DIG_D_FF_AS
    port map (
      Set => s90,
      D   => s89,
      C   => s11,
      Clr => s86,
      Q   => s91);
  DIG_D_FF_ASinst33: entity DIG_D_FF_AS
    port map (
      Set => s92,
      D   => s91,
      C   => s11,
      Clr => s86,
      Q   => s93);
  DIG_D_FF_ASinst34: entity DIG_D_FF_AS
    port map (
      Set => s94,
      D   => s93,
      C   => s11,
      Clr => s86,
      Q   => s95);
  DIG_D_FF_ASinst35: entity DIG_D_FF_AS
    port map (
      Set => s96,
      D   => s95,
      C   => s11,
      Clr => s86,
      Q   => s97);
  DIG_D_FF_ASinst36: entity DIG_D_FF_AS
    port map (
      Set => s98,
      D   => s97,
      C   => s11,
      Clr => s86,
      Q   => s99);
  DIG_D_FF_ASinst37: entity DIG_D_FF_AS
    port map (
      Set => s100,
      D   => s99,
      C   => s11,
      Clr => s86,
      Q   => s101);
  DIG_D_FF_ASinst38: entity DIG_D_FF_AS
    port map (
      Set => s102,
      D   => s101,
      C   => s11,
      Clr => s86,
      Q   => s103);
  DIG_D_FF_ASinst39: entity DIG_D_FF_AS
    port map (
      Set => s104,
      D   => s103,
      C   => s11,
      Clr => s86,
      Q   => s105);
  DIG_D_FF_ASinst40: entity DIG_D_FF_AS
    port map (
      Set => s106,
      D   => s105,
      C   => s11,
      Clr => s86,
      Q   => s107);
  DIG_D_FF_ASinst41: entity DIG_D_FF_AS
    port map (
      Set => s108,
      D   => s107,
      C   => s11,
      Clr => s86,
      Q   => s109);
  DIG_D_FF_ASinst42: entity DIG_D_FF_AS
    port map (
      Set => s110,
      D   => s109,
      C   => s11,
      Clr => s86,
      Q   => s111);
  DIG_D_FF_ASinst43: entity DIG_D_FF_AS
    port map (
      Set => s112,
      D   => s111,
      C   => s11,
      Clr => s86,
      Q   => s113);
  DIG_D_FF_ASinst44: entity DIG_D_FF_AS
    port map (
      Set => s114,
      D   => s113,
      C   => s11,
      Clr => s86,
      Q   => s115);
  DIG_D_FF_ASinst45: entity DIG_D_FF_AS
    port map (
      Set => s116,
      D   => s115,
      C   => s11,
      Clr => s86,
      Q   => s117);
  DIG_D_FF_ASinst46: entity DIG_D_FF_AS
    port map (
      Set => s118,
      D   => s117,
      C   => s11,
      Clr => s86,
      Q   => s119);
                 s78  <= (s11 and s81);
                 s150 <= (s149 and ioW);
  gate47: entity DIG_Register_BUS
    generic map (
      Bits => 4)
    port map (
      D  => s151,
      C  => s11,
      en => s150,
      Q  => io_outEnable);
                 FlagOut(0)           <= s17;
                 FlagOut(1)           <= s18;
                 FlagOut(2)           <= s19;
                 FlagOut(3)           <= interEn;
                 FlagOut(15 downto 4) <= "000000000000";
  DIG_Addinst48: entity DIG_Add -- Add One
  generic map (
    Bits => 12) port map (
    a   => PC_out,
    b   => "000000000001",
    c_i => '0',
    s   => s32);
  MUX_GATE_BUS_1inst49: entity MUX_GATE_BUS_1
    generic map (
      Bits => 12)
    port map (
      sel   => intr,
      in_0  => s36,
      in_1  => "000000000010",
      p_out => s37);
  COMP_GATE_UNSIGNEDinst50: entity COMP_GATE_UNSIGNED
    generic map (
      Bits => 16)
    port map (
      a  => s13,
      b  => "0000000000000101",
      eq => s40);
  COMP_GATE_UNSIGNEDinst51: entity COMP_GATE_UNSIGNED
    generic map (
      Bits => 8)
    port map (
      a  => s52,
      b  => s54,
      gr => s55,
      le => s56);
  DIG_Addinst52: entity DIG_Add
    generic map (
      Bits => 16)
    port map (
      a   => s2,
      b   => s7,
      c_i => s70,
      s   => s57,
      c_o => s71);
  DIG_Subinst53: entity DIG_Sub
    generic map (
      Bits => 16)
    port map (
      a   => s2,
      b   => s7,
      c_i => s70,
      s   => s58,
      c_o => s72);
                 s59 <= (s2 and s7);
                 s60 <= (s2 or s7);
                 s61 <= (s2 xor s7);
  COMP_GATE_SIGNEDinst54: entity COMP_GATE_SIGNED
    generic map (
      Bits => 16)
    port map (
      a  => s13,
      b  => "0000000000000000",
      eq => s23);
  LSLinst55: entity LSL
    port map (
      Di => s2,
      Ci => s70,
      Do => s64,
      Co => s73);
  LSRinst56: entity LSR
    port map (
      Di => s2,
      Ci => s70,
      Do => s65,
      Co => s74);
  ASRinst57: entity ASR
    port map (
      Di => s2,
      C  => s75,
      Do => s66);
  SWAPinst58: entity SWAP
    port map (
      Di => s2,
      Do => s67);
  SWAPNinst59: entity SWAPN
    port map (
      Di => s2,
      Do => s68);
  DIG_Mul_unsignedinst60: entity DIG_Mul_unsigned
    generic map (
      Bits => 16)
    port map (
      a   => s2,
      b   => s7,
      mul => s76);
                 s62 <= not s2;
  DIG_Neginst61: entity DIG_Neg
    generic map (
      Bits => 16)
    port map (
      p_in  => s2,
      p_out => s63);
  MUX_GATE_BUS_1inst62: entity MUX_GATE_BUS_1
    generic map (
      Bits => 16)
    port map (
      sel   => s81,
      in_0  => "0000000000000000",
      in_1  => s82,
      p_out => s83);
  COMP_GATE_UNSIGNEDinst63: entity COMP_GATE_UNSIGNED
    generic map (
      Bits => 16)
    port map (
      a  => s13,
      b  => "0000000000001000",
      eq => s84);
                 s88           <= (s99 xor (s109 xor (s113 xor s117)));
                 RandomNUM(0)  <= s89;
                 RandomNUM(1)  <= s91;
                 RandomNUM(2)  <= s93;
                 RandomNUM(3)  <= s95;
                 RandomNUM(4)  <= s97;
                 RandomNUM(5)  <= s99;
                 RandomNUM(6)  <= s101;
                 RandomNUM(7)  <= s103;
                 RandomNUM(8)  <= s105;
                 RandomNUM(9)  <= s107;
                 RandomNUM(10) <= s109;
                 RandomNUM(11) <= s111;
                 RandomNUM(12) <= s113;
                 RandomNUM(13) <= s115;
                 RandomNUM(14) <= s117;
                 RandomNUM(15) <= s119;
  COMP_GATE_UNSIGNEDinst64: entity COMP_GATE_UNSIGNED
    generic map (
      Bits => 16)
    port map (
      a  => s13,
      b  => "0000000000000110",
      eq => s149);
                 uio_out(3 downto 0) <= PC_out(11 downto 8);
                 uio_out(7 downto 4) <= outputToOutside;
                 uio_oe(3 downto 0)  <= "0001";
                 uio_oe(7 downto 4)  <= io_outEnable;
                 s10                 <= s13(7 downto 0);
                 s42                 <= s1(3 downto 0);
                 s24                 <= s13(15);
                 s33                 <= s13(11 downto 0);
                 s151                <= s1(3 downto 0);
                 uo_out              <= PC_out(7 downto 0);
  DIG_Addinst65: entity DIG_Add -- Add ALU
  generic map (
    Bits => 12) port map (
    a   => s32,
    b   => s33,
    c_i => '0',
    s   => s34);
                 inter             <= (s55 or s56);
                 s14(11 downto 0)  <= s32;
                 s14(15 downto 12) <= "0000";
                 s69               <= s76(15 downto 0);
                 s87               <= s83(0);
                 s90               <= s83(1);
                 s92               <= s83(2);
                 s94               <= s83(3);
                 s96               <= s83(4);
                 s98               <= s83(5);
                 s100              <= s83(6);
                 s102              <= s83(7);
                 s104              <= s83(8);
                 s106              <= s83(9);
                 s108              <= s83(10);
                 s110              <= s83(11);
                 s112              <= s83(12);
                 s114              <= s83(13);
                 s116              <= s83(14);
                 s118              <= s83(15);
  MUX_GATE_BUS_1inst66: entity MUX_GATE_BUS_1
    generic map (
      Bits => 12)
    port map (
      sel   => s21,
      in_0  => s32,
      in_1  => s34,
      p_out => s35);
  DIG_D_FF_ASinst67: entity DIG_D_FF_AS
    port map (
      Set  => '0',
      D    => s77,
      C    => s78,
      Clr  => s79,
      Q    => s80,
      notQ => s77);
  s85 <= (s80 or s79);
  s86 <= (s81 and not s85);
end architecture;
