LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity DIG_Register is

  port (
    Q  : out std_logic;
    D  : in  std_logic;
    C  : in  std_logic;
    en : in  std_logic);
end entity;

architecture Behavioral of DIG_Register is
  signal state : std_logic := '0';
begin
  Q <= state;

  process (C)
  begin
    if rising_edge(C) and (en = '1') then
      state <= D;
    end if;
  end process;
end architecture;

