LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity registerblock is
  port (
    datain : in  std_logic_vector(15 downto 0);
    we     : in  std_logic;
    clk    : in  std_logic;
    src    : in  std_logic_vector(3 downto 0);
    dest   : in  std_logic_vector(3 downto 0);
    rdest  : out std_logic_vector(15 downto 0);
    rsrc   : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of registerblock is
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
  demux_gate_4inst0: entity demux_demux_gate_4inst_4
    generic map (
      tempval => 0)
    port map (
      sel    => dest,
      p_in   => we,
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
  gate1: entity dig_register_bus -- r0
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s0,
    q  => s1);
  gate2: entity dig_register_bus -- r1
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s2,
    q  => s3);
  gate3: entity dig_register_bus -- r2
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s4,
    q  => s5);
  gate4: entity dig_register_bus -- r3
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s6,
    q  => s7);
  gate5: entity dig_register_bus -- r4
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s8,
    q  => s9);
  gate6: entity dig_register_bus -- r5
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s10,
    q  => s11);
  gate7: entity dig_register_bus -- r6
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s12,
    q  => s13);
  gate8: entity dig_register_bus -- r7
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s14,
    q  => s15);
  gate9: entity dig_register_bus -- r8
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s16,
    q  => s17);
  gate10: entity dig_register_bus -- r9
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s18,
    q  => s19);
  gate11: entity dig_register_bus -- r10
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s20,
    q  => s21);
  gate12: entity dig_register_bus -- r11
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s22,
    q  => s23);
  gate13: entity dig_register_bus -- r12
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s24,
    q  => s25);
  gate14: entity dig_register_bus -- bp
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s26,
    q  => s27);
  gate15: entity dig_register_bus -- sp
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s28,
    q  => s29);
  gate16: entity dig_register_bus -- ra
  generic map (
    bits => 16) port map (
    d  => datain,
    c  => clk,
    en => s30,
    q  => s31);
  mux_gate_bus_4inst17: entity mux_mux_gate_bus_4inst_bus_4
    generic map (
      bits => 16)
    port map (
      sel   => dest,
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
      p_out => rdest);
  mux_gate_bus_4inst18: entity mux_mux_gate_bus_4inst_bus_4
    generic map (
      bits => 16)
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
      p_out => rsrc);
end architecture;

