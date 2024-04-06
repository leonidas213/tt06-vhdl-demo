LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity demux_gate_bus_1 is
  generic (
    bits    : integer;
    tempval : integer);
  port (
    out_0 : out std_logic_vector((bits - 1) downto 0);
    out_1 : out std_logic_vector((bits - 1) downto 0);
    sel   : in  std_logic;
    p_in  : in  std_logic_vector((bits - 1) downto 0));
end entity;

architecture behavioral of demux_gate_bus_1 is
begin
  out_0 <= p_in when sel = '0' else std_logic_vector(to_unsigned(tempval, bits));
  out_1 <= p_in when sel = '1' else std_logic_vector(to_unsigned(tempval, bits));
end architecture;

