LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity dig_register_bus is
  generic (bits : integer);
  port (
    q  : out std_logic_vector((bits - 1) downto 0);
    d  : in  std_logic_vector((bits - 1) downto 0);
    c  : in  std_logic;
    en : in  std_logic);
end entity;

architecture behavioral of dig_register_bus is
  signal state : std_logic_vector((bits - 1) downto 0) := (others => '0');
begin
  q <= state;

  process (c)
  begin
    if rising_edge(c) and (en = '1') then
      state <= d;
    end if;
  end process;
end architecture;

