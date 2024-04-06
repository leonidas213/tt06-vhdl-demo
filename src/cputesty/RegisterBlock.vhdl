LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity RegisterBlock is
  port (
    DataIn : in  std_logic_vector(15 downto 0);
    WE     : in  std_logic;
    clk    : in  std_logic;
    src    : in  std_logic_vector(3 downto 0);
    Dest   : in  std_logic_vector(3 downto 0);
    RDest  : out std_logic_vector(15 downto 0);
    Rsrc   : out std_logic_vector(15 downto 0));
end entity;

architecture Behavioral of RegisterBlock is
  signal s0  : std_logic;
  signal s1  : std_logic_vector(15 downto 0);
  signal s2  : std_logic;
  signal s3  : std_logic_vector(15 downto 0);
  signal s4  : std_logic;
  signal s5  : std_logic_vector(15 downto 0);
  signal s6  : std_logic;
  signal s7  : std_logic_vector(15 downto 0);
  signal s8  : std_logic;
  signal s9  : std_logic_vector(15 downto 0);
  signal s10 : std_logic;
  signal s11 : std_logic_vector(15 downto 0);
  signal s12 : std_logic;
  signal s13 : std_logic_vector(15 downto 0);
  signal s14 : std_logic;
  signal s15 : std_logic_vector(15 downto 0);
  signal s16 : std_logic;
  signal s17 : std_logic_vector(15 downto 0);
  signal s18 : std_logic;
  signal s19 : std_logic_vector(15 downto 0);
  signal s20 : std_logic;
  signal s21 : std_logic_vector(15 downto 0);
  signal s22 : std_logic;
  signal s23 : std_logic_vector(15 downto 0);
  signal s24 : std_logic;
  signal s25 : std_logic_vector(15 downto 0);
  signal s26 : std_logic;
  signal s27 : std_logic_vector(15 downto 0);
  signal s28 : std_logic;
  signal s29 : std_logic_vector(15 downto 0);
  signal s30 : std_logic;
  signal s31 : std_logic_vector(15 downto 0);
begin
  DEMUX_GATE_4inst0: entity work.DEMUX_GATE_4
    generic map (
      tempval => 0)
    port map (
      sel    => Dest,
      p_in   => WE,
      out_0  => s0,
      out_1  => s2,
      out_2  => s4,
      out_3  => s6,
      out_4  => s8,
      out_5  => s10,
      out_6  => s12,
      out_7  => s14,
      out_8  => s16,
      out_9  => s18,
      out_10 => s20,
      out_11 => s22,
      out_12 => s24,
      out_13 => s26,
      out_14 => s28,
      out_15 => s30);
  gate1: entity work.DIG_Register_BUS -- R0
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s0,
    Q  => s1);
  gate2: entity work.DIG_Register_BUS -- R1
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s2,
    Q  => s3);
  gate3: entity work.DIG_Register_BUS -- R2
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s4,
    Q  => s5);
  gate4: entity work.DIG_Register_BUS -- R3
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s6,
    Q  => s7);
  gate5: entity work.DIG_Register_BUS -- R4
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s8,
    Q  => s9);
  gate6: entity work.DIG_Register_BUS -- R5
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s10,
    Q  => s11);
  gate7: entity work.DIG_Register_BUS -- R6
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s12,
    Q  => s13);
  gate8: entity work.DIG_Register_BUS -- R7
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s14,
    Q  => s15);
  gate9: entity work.DIG_Register_BUS -- R8
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s16,
    Q  => s17);
  gate10: entity work.DIG_Register_BUS -- R9
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s18,
    Q  => s19);
  gate11: entity work.DIG_Register_BUS -- R10
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s20,
    Q  => s21);
  gate12: entity work.DIG_Register_BUS -- R11
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s22,
    Q  => s23);
  gate13: entity work.DIG_Register_BUS -- R12
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s24,
    Q  => s25);
  gate14: entity work.DIG_Register_BUS -- BP
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s26,
    Q  => s27);
  gate15: entity work.DIG_Register_BUS -- SP
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s28,
    Q  => s29);
  gate16: entity work.DIG_Register_BUS -- RA
  generic map (
    Bits => 16) port map (
    D  => DataIn,
    C  => clk,
    en => s30,
    Q  => s31);
  MUX_GATE_BUS_4inst17: entity work.MUX_GATE_BUS_4
    generic map (
      Bits => 16)
    port map (
      sel   => Dest,
      in_0  => s1,
      in_1  => s3,
      in_2  => s5,
      in_3  => s7,
      in_4  => s9,
      in_5  => s11,
      in_6  => s13,
      in_7  => s15,
      in_8  => s17,
      in_9  => s19,
      in_10 => s21,
      in_11 => s23,
      in_12 => s25,
      in_13 => s27,
      in_14 => s29,
      in_15 => s31,
      p_out => RDest);
  MUX_GATE_BUS_4inst18: entity work.MUX_GATE_BUS_4
    generic map (
      Bits => 16)
    port map (
      sel   => src,
      in_0  => s1,
      in_1  => s3,
      in_2  => s5,
      in_3  => s7,
      in_4  => s9,
      in_5  => s11,
      in_6  => s13,
      in_7  => s15,
      in_8  => s17,
      in_9  => s19,
      in_10 => s21,
      in_11 => s23,
      in_12 => s25,
      in_13 => s27,
      in_14 => s29,
      in_15 => s31,
      p_out => Rsrc);
end architecture;

