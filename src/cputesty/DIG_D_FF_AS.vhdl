LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity dig_d_ff_as is

  port (
    q    : out std_logic;
    notq : out std_logic;
    set  : in  std_logic;
    d    : in  std_logic;
    c    : in  std_logic;
    clr  : in  std_logic);
end entity;

architecture behavioral of dig_d_ff_as is
  signal state : std_logic := '0';
begin
  process (set, clr, c)
  begin
    if (set = '1') then
      state <= not ('0');
    elsif (clr = '1') then
      state <= '0';
    elsif rising_edge(c) then
      state <= d;
    end if;
  end process;

  q    <= state;
  notq <= not (state);
end architecture;

