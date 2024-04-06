LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity DIG_D_FF_AS is

  port (
    Q    : out std_logic;
    notQ : out std_logic;
    Set  : in  std_logic;
    D    : in  std_logic;
    C    : in  std_logic;
    Clr  : in  std_logic);
end entity;

architecture Behavioral of DIG_D_FF_AS is
  signal state : std_logic := '0';
begin
  process (Set, Clr, C)
  begin
    if (Set = '1') then
      state <= not ('0');
    elsif (Clr = '1') then
      state <= '0';
    elsif rising_edge(C) then
      state <= D;
    end if;
  end process;

  Q    <= state;
  notQ <= not (state);
end architecture;

