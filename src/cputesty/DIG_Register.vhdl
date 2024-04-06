LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity dig_register is

  port (
    q  : out std_logic;
    d  : in  std_logic;
    c  : in  std_logic;
    en : in  std_logic);
end entity;

architecture behavioral of dig_register is
  signal state : std_logic := '0';
begin
  q <= state;

  process (c)
  begin
    if rising_edge(c) and (en = '1') then
      state <= d;
    end if;
  end process;
end architecture;

