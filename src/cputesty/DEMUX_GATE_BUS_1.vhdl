LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity DEMUX_GATE_BUS_1 is
  generic (
    Bits    : integer;
    tempval : integer);
  port (
    out_0 : out std_logic_vector((Bits - 1) downto 0);
    out_1 : out std_logic_vector((Bits - 1) downto 0);
    sel   : in  std_logic;
    p_in  : in  std_logic_vector((Bits - 1) downto 0));
end entity;

architecture Behavioral of DEMUX_GATE_BUS_1 is
begin
  out_0 <= p_in when sel = '0' else std_logic_vector(to_unsigned(tempval, Bits));
  out_1 <= p_in when sel = '1' else std_logic_vector(to_unsigned(tempval, Bits));
end architecture;

