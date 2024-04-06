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

architecture behavioral of tt_um_smallScpu is
  signal muxa            : std_logic;
  signal s0              : std_logic_vector(15 downto 0);
  signal s1              : std_logic_vector(15 downto 0);
  signal s2              : std_logic_vector(15 downto 0);
  signal muxb            : std_logic_vector(2 downto 0);
  signal s3              : std_logic_vector(15 downto 0);
  signal s4              : std_logic_vector(15 downto 0);
  signal s5              : std_logic_vector(15 downto 0);
  signal s6              : std_logic_vector(15 downto 0);
  signal s7              : std_logic_vector(15 downto 0);
  signal opcodedebug     : std_logic_vector(15 downto 0);
  signal s8              : std_logic_vector(3 downto 0);
  signal s9              : std_logic_vector(3 downto 0);
  signal opcode          : std_logic_vector(7 downto 0);
  signal s10             : std_logic_vector(7 downto 0);
  signal st              : std_logic;
  signal s11             : std_logic;
  signal ld              : std_logic;
  signal s12             : std_logic_vector(15 downto 0);
  signal wdmux           : std_logic_vector(2 downto 0);
  signal s13             : std_logic_vector(15 downto 0);
  signal din             : std_logic_vector(15 downto 0);
  signal s14             : std_logic_vector(15 downto 0);
  signal randomnum       : std_logic_vector(15 downto 0);
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
  signal interen         : std_logic;
  signal flagout         : std_logic_vector(15 downto 0);
  signal interlock       : std_logic;
  signal imm             : std_logic;
  signal s25             : std_logic;
  signal s26             : std_logic;
  signal s27             : std_logic;
  signal reti            : std_logic;
  signal s28             : std_logic;
  signal s29             : std_logic;
  signal inter           : std_logic;
  signal we              : std_logic;
  signal iem             : std_logic_vector(1 downto 0);
  signal s30             : std_logic_vector(11 downto 0);
  signal s31             : std_logic;
  signal pc_out          : std_logic_vector(11 downto 0);
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
  signal iow             : std_logic;
  signal s41             : std_logic;
  signal s42             : std_logic_vector(3 downto 0);
  signal outputtooutside : std_logic_vector(3 downto 0);
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
  signal aluop           : std_logic_vector(4 downto 0);
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
  signal stpc            : std_logic;
  signal randomnumsel    : std_logic;
  signal ior             : std_logic;
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
  signal src2d           : std_logic;
  signal s132            : std_logic;
  signal s133            : std_logic;
  signal s134            : std_logic;
  signal s135            : std_logic;
  signal s136            : std_logic;
  signal alu2d           : std_logic;
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
  signal io_outenable    : std_logic_vector(3 downto 0);
begin
  dig_jk_ff_asinst0: entity dig_jk_ff_as
    generic map (
      tempval => '0')
    port map (
      set  => '0',
      j    => '1',
      c    => clk,
      k    => '1',
      clr  => rst_n,
      q    => s145,
      notq => s142);
                s146    <= not clk;
                s43     <= uio_in(0);
                s44     <= uio_in(1);
                s45     <= uio_in(2);
                s46     <= uio_in(3);
                s47     <= uio_in(4);
                s48     <= uio_in(5);
                s49     <= uio_in(6);
                s50     <= uio_in(7);
                din(0)  <= s43;
                din(1)  <= s44;
                din(2)  <= s45;
                din(3)  <= s46;
                din(4)  <= s47;
                din(5)  <= s48;
                din(6)  <= s49;
                din(7)  <= s50;
                din(8)  <= '0';
                din(9)  <= '0';
                din(10) <= '0';
                din(11) <= '0';
                din(12) <= '0';
                din(13) <= '0';
                din(14) <= '0';
                din(15) <= '0';
                s51(0)  <= s43;
                s51(1)  <= s44;
                s51(2)  <= s45;
                s51(3)  <= s46;
                s51(4)  <= s47;
                s51(5)  <= s48;
                s51(6)  <= s49;
                s51(7)  <= s50;
  demux_gate_bus_1inst1: entity demux_demux_gate_bus_1inst_bus_1
    generic map (
      bits    => 8,
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
  gate2: entity dig_register_bus
    generic map (
      bits => 8)
    port map (
      d  => s143,
      c  => s146,
      en => s145,
      q  => s147);
  gate3: entity dig_register_bus
    generic map (
      bits => 8)
    port map (
      d  => s144,
      c  => s146,
      en => s142,
      q  => s148);
                opcodedebug(7 downto 0)  <= s148;
                opcodedebug(15 downto 8) <= s147;
  singextendinst4: entity singextend
      port map (
      inst => opcodedebug,
      n4s  => s4,
      n8sd => s5,
      n4d  => s6);
                s8     <= opcodedebug(3 downto 0);
                s9     <= opcodedebug(7 downto 4);
                opcode <= opcodedebug(15 downto 8);
                s120   <= opcode(6 downto 0);
                imm    <= opcode(7);
  mux_gate_bus_1inst5: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 7)
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
      a      => s122,
      b      => s123,
      c      => s124,
      d      => s125,
      e      => s126,
      f      => s127,
      g      => s128,
      muxb0  => s129,
      muxb1  => s130,
      muxb2  => s131,
      src2d  => src2d,
      aluop0 => s132,
      aluop1 => s133,
      aluop2 => s134,
      aluop3 => s135,
      aluop4 => s136,
      we     => we,
      sf     => sf,
      alu2d  => alu2d,
      iem0   => s137,
      iem1   => s138,
      br0    => s139,
      br1    => s140,
      br2    => s141,
      muxa   => muxa,
      ld     => ld,
      st     => st,
      p_abs  => p_abs,
      iow    => iow,
      ior    => ior,
      stpc   => stpc,
      reti   => reti,
      rand   => randomnumsel);
                wdmux(0) <= (stpc or ld or randomnumsel);
                wdmux(1) <= (ior or stpc);
                wdmux(2) <= (randomnumsel or randomnumsel);
                muxb(0)  <= s131;
                muxb(1)  <= s130;
                muxb(2)  <= s129;
                aluop(0) <= s136;
                aluop(1) <= s135;
                aluop(2) <= s134;
                aluop(3) <= s133;
                aluop(4) <= s132;
                br(0)    <= s141;
                br(1)    <= s140;
                br(2)    <= s139;
                iem(0)   <= s138;
                iem(1)   <= s137;
  imreginst7: entity imreg
      port map (
      en   => imm,
      iem  => iem,
      c    => s11,
      inst => opcodedebug,
      imm  => s3);
                s16 <= br(1 downto 0);
                sel <= aluop(3 downto 0);
  mux_gate_bus_1inst8: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 16)
    port map (
      sel   => muxa,
      in_0  => s0,
      in_1  => s1,
      p_out => s2);
  mux_gate_bus_3inst9: entity mux_mux_gate_bus_3inst_bus_3
    generic map (
      bits => 16)
    port map (
      sel   => muxb,
      in_0  => s1,
      in_1  => "0000000000000000",
      in_2  => s3,
      in_3  => "0000000000000000",
      in_4  => "0000000000000000",
      in_5  => s4,
      in_6  => s5,
      in_7  => s6,
      p_out => s7);
  dig_ramdualportinst10: entity dig_ramdualport -- mem
  generic map (
    bits     => 16,
    addrbits => 8) port map (
    a   => s10,
    din => s1,
    str => st,
    c   => s11,
    ld  => ld,
    d   => s12);
  mux_gate_bus_3inst11: entity mux_mux_gate_bus_3inst_bus_3
    generic map (
      bits => 16)
    port map (
      sel   => wdmux,
      in_0  => s13,
      in_1  => s12,
      in_2  => din,
      in_3  => s14,
      in_4  => "0000000000000000",
      in_5  => randomnum,
      in_6  => "0000000000000000",
      in_7  => "0000000000000000",
      p_out => s15);
  mux_gate_2inst12: entity mux_mux_gate_2inst_2
    port map (
      sel   => s16,
      in_0  => '0',
      in_1  => s17,
      in_2  => s18,
      in_3  => s19,
      p_out => s20);
                 s21 <= (s20 xor br(2));
  gate13: entity dig_register -- carry
    port map (
    d  => s22,
    c  => s11,
    en => sf,
    q  => s17);
  gate14: entity dig_register -- zero
  port map (
    d  => s23,
    c  => s11,
    en => sf,
    q  => s18);
  gate15: entity dig_register -- neg
  port map (
    d  => s24,
    c  => s11,
    en => sf,
    q  => s19);
  gate16: entity dig_register -- inter1
  port map (
    d  => intr,
    c  => s11,
    en => sf,
    q  => interen);
                 intr <= (not interlock and not imm and s25 and not interen);
  dig_d_ffinst17: entity dig_d_ff -- *
  generic map (
    tempval => '0') port map (
    d => s26,
    c => s27,
    q => interlock);
                 s26 <= ((interlock and not reti) or intr);
  dig_d_ffinst18: entity dig_d_ff -- *
  generic map (
    tempval => '0') port map (
    d => s28,
    c => s29,
    q => s25);
                 s28 <= ((s25 and not reti) or inter);
  gate19: entity registerblock
      port map (
      datain => s15,
      we     => we,
      clk    => s11,
      src    => s8,
      dest   => s9,
      rdest  => s0,
      rsrc   => s1);
  gate20: entity dig_register_bus -- pc
  generic map (
    bits => 12) port map (
    d  => s30,
    c  => s31,
    en => '1',
    q  => pc_out);
  mux_gate_bus_1inst21: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 12)
    port map (
      sel   => p_abs,
      in_0  => s35,
      in_1  => s33,
      p_out => s36);
  gate22: entity dig_register_bus
    generic map (
      bits => 12)
    port map (
      d  => s36,
      c  => s38,
      en => intr,
      q  => s39);
  mux_gate_bus_1inst23: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 12)
    port map (
      sel   => reti,
      in_0  => s37,
      in_1  => s39,
      p_out => s30);
                 s41 <= (s40 and iow);
  gate24: entity dig_register_bus
    generic map (
      bits => 4)
    port map (
      d  => s42,
      c  => s11,
      en => s41,
      q  => outputtooutside);
  gate25: entity dig_register_bus
    generic map (
      bits => 8)
    port map (
      d  => s52,
      c  => s53,
      en => inter,
      q  => s54);
  mux_gate_bus_1inst26: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 8)
    port map (
      sel   => interlock,
      in_0  => s51,
      in_1  => s54,
      p_out => s52);
  mux_gate_bus_4inst27: entity mux_mux_gate_bus_4inst_bus_4
    generic map (
      bits => 16)
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
  mux_gate_4inst28: entity mux_mux_gate_4inst_4
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
                 s70 <= (aluop(4) and s17);
  gate29: entity dig_register_bus -- seed
  generic map (
    bits => 16) port map (
    d  => s1,
    c  => s11,
    en => s81,
    q  => s82);
                 s81 <= (s84 and iow);
  dig_jk_ffinst30: entity dig_jk_ff
    generic map (
      tempval => '0')
    port map (
      j => s85,
      c => s11,
      k => s85,
      q => s79);
  dig_d_ff_asinst31: entity dig_d_ff_as
    port map (
      set => s87,
      d   => s88,
      c   => s11,
      clr => s86,
      q   => s89);
  dig_d_ff_asinst32: entity dig_d_ff_as
    port map (
      set => s90,
      d   => s89,
      c   => s11,
      clr => s86,
      q   => s91);
  dig_d_ff_asinst33: entity dig_d_ff_as
    port map (
      set => s92,
      d   => s91,
      c   => s11,
      clr => s86,
      q   => s93);
  dig_d_ff_asinst34: entity dig_d_ff_as
    port map (
      set => s94,
      d   => s93,
      c   => s11,
      clr => s86,
      q   => s95);
  dig_d_ff_asinst35: entity dig_d_ff_as
    port map (
      set => s96,
      d   => s95,
      c   => s11,
      clr => s86,
      q   => s97);
  dig_d_ff_asinst36: entity dig_d_ff_as
    port map (
      set => s98,
      d   => s97,
      c   => s11,
      clr => s86,
      q   => s99);
  dig_d_ff_asinst37: entity dig_d_ff_as
    port map (
      set => s100,
      d   => s99,
      c   => s11,
      clr => s86,
      q   => s101);
  dig_d_ff_asinst38: entity dig_d_ff_as
    port map (
      set => s102,
      d   => s101,
      c   => s11,
      clr => s86,
      q   => s103);
  dig_d_ff_asinst39: entity dig_d_ff_as
    port map (
      set => s104,
      d   => s103,
      c   => s11,
      clr => s86,
      q   => s105);
  dig_d_ff_asinst40: entity dig_d_ff_as
    port map (
      set => s106,
      d   => s105,
      c   => s11,
      clr => s86,
      q   => s107);
  dig_d_ff_asinst41: entity dig_d_ff_as
    port map (
      set => s108,
      d   => s107,
      c   => s11,
      clr => s86,
      q   => s109);
  dig_d_ff_asinst42: entity dig_d_ff_as
    port map (
      set => s110,
      d   => s109,
      c   => s11,
      clr => s86,
      q   => s111);
  dig_d_ff_asinst43: entity dig_d_ff_as
    port map (
      set => s112,
      d   => s111,
      c   => s11,
      clr => s86,
      q   => s113);
  dig_d_ff_asinst44: entity dig_d_ff_as
    port map (
      set => s114,
      d   => s113,
      c   => s11,
      clr => s86,
      q   => s115);
  dig_d_ff_asinst45: entity dig_d_ff_as
    port map (
      set => s116,
      d   => s115,
      c   => s11,
      clr => s86,
      q   => s117);
  dig_d_ff_asinst46: entity dig_d_ff_as
    port map (
      set => s118,
      d   => s117,
      c   => s11,
      clr => s86,
      q   => s119);
                 s78  <= (s11 and s81);
                 s150 <= (s149 and iow);
  gate47: entity dig_register_bus
    generic map (
      bits => 4)
    port map (
      d  => s151,
      c  => s11,
      en => s150,
      q  => io_outenable);
                 flagout(0)           <= s17;
                 flagout(1)           <= s18;
                 flagout(2)           <= s19;
                 flagout(3)           <= interen;
                 flagout(15 downto 4) <= "000000000000";
  dig_addinst48: entity dig_add -- add one
  generic map (
    bits => 12) port map (
    a   => pc_out,
    b   => "000000000001",
    c_i => '0',
    s   => s32);
  mux_gate_bus_1inst49: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 12)
    port map (
      sel   => intr,
      in_0  => s36,
      in_1  => "000000000010",
      p_out => s37);
  comp_gate_unsignedinst50: entity comp_comp_gate_unsignedinst_unsigned
    generic map (
      bits => 16)
    port map (
      a  => s13,
      b  => "0000000000000101",
      eq => s40);
  comp_gate_unsignedinst51: entity comp_comp_gate_unsignedinst_unsigned
    generic map (
      bits => 8)
    port map (
      a  => s52,
      b  => s54,
      gr => s55,
      le => s56);
  dig_addinst52: entity dig_add
    generic map (
      bits => 16)
    port map (
      a   => s2,
      b   => s7,
      c_i => s70,
      s   => s57,
      c_o => s71);
  dig_subinst53: entity dig_sub
    generic map (
      bits => 16)
    port map (
      a   => s2,
      b   => s7,
      c_i => s70,
      s   => s58,
      c_o => s72);
                 s59 <= (s2 and s7);
                 s60 <= (s2 or s7);
                 s61 <= (s2 xor s7);
  comp_gate_signedinst54: entity comp_comp_gate_signedinst_signed
    generic map (
      bits => 16)
    port map (
      a  => s13,
      b  => "0000000000000000",
      eq => s23);
  lslinst55: entity lsl
    port map (
      di => s2,
      ci => s70,
      do => s64,
      co => s73);
  lsrinst56: entity lsr
    port map (
      di => s2,
      ci => s70,
      do => s65,
      co => s74);
  asrinst57: entity asr
    port map (
      di => s2,
      c  => s75,
      do => s66);
  swapinst58: entity swap
    port map (
      di => s2,
      do => s67);
  swapninst59: entity swapn
    port map (
      di => s2,
      do => s68);
  dig_mul_unsignedinst60: entity dig_mul_unsigned
    generic map (
      bits => 16)
    port map (
      a   => s2,
      b   => s7,
      mul => s76);
                 s62 <= not s2;
  dig_neginst61: entity dig_neg
    generic map (
      bits => 16)
    port map (
      p_in  => s2,
      p_out => s63);
  mux_gate_bus_1inst62: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 16)
    port map (
      sel   => s81,
      in_0  => "0000000000000000",
      in_1  => s82,
      p_out => s83);
  comp_gate_unsignedinst63: entity comp_comp_gate_unsignedinst_unsigned
    generic map (
      bits => 16)
    port map (
      a  => s13,
      b  => "0000000000001000",
      eq => s84);
                 s88           <= (s99 xor (s109 xor (s113 xor s117)));
                 randomnum(0)  <= s89;
                 randomnum(1)  <= s91;
                 randomnum(2)  <= s93;
                 randomnum(3)  <= s95;
                 randomnum(4)  <= s97;
                 randomnum(5)  <= s99;
                 randomnum(6)  <= s101;
                 randomnum(7)  <= s103;
                 randomnum(8)  <= s105;
                 randomnum(9)  <= s107;
                 randomnum(10) <= s109;
                 randomnum(11) <= s111;
                 randomnum(12) <= s113;
                 randomnum(13) <= s115;
                 randomnum(14) <= s117;
                 randomnum(15) <= s119;
  comp_gate_unsignedinst64: entity comp_comp_gate_unsignedinst_unsigned
    generic map (
      bits => 16)
    port map (
      a  => s13,
      b  => "0000000000000110",
      eq => s149);
                 uio_out(3 downto 0) <= pc_out(11 downto 8);
                 uio_out(7 downto 4) <= outputtooutside;
                 uio_oe(3 downto 0)  <= "0001";
                 uio_oe(7 downto 4)  <= io_outenable;
                 s10                 <= s13(7 downto 0);
                 s42                 <= s1(3 downto 0);
                 s24                 <= s13(15);
                 s33                 <= s13(11 downto 0);
                 s151                <= s1(3 downto 0);
                 uo_out              <= pc_out(7 downto 0);
  dig_addinst65: entity dig_add -- add alu
  generic map (
    bits => 12) port map (
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
  mux_gate_bus_1inst66: entity mux_mux_gate_bus_1inst_bus_1
    generic map (
      bits => 12)
    port map (
      sel   => s21,
      in_0  => s32,
      in_1  => s34,
      p_out => s35);
  dig_d_ff_asinst67: entity dig_d_ff_as
    port map (
      set  => '0',
      d    => s77,
      c    => s78,
      clr  => s79,
      q    => s80,
      notq => s77);
  s85 <= (s80 or s79);
  s86 <= (s81 and not s85);
end architecture;
