LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity mux_gate_bus_1 is
  generic (bits : integer);
  port (
    p_out : out std_logic_vector((bits - 1) downto 0);
    sel   : in  std_logic;

    in_0  : in  std_logic_vector((bits - 1) downto 0);
    in_1  : in  std_logic_vector((bits - 1) downto 0));
end entity;

architecture behavioral of mux_gate_bus_1 is
begin
  with sel select
    p_out <=                       in_0 when '0',
                                   in_1 when '1',
                   (others => '0') when others;
end architecture;

