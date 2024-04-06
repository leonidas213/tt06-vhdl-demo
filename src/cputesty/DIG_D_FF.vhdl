LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity dig_d_ff is
  generic (
    tempval : std_logic);
  port (d    : in  std_logic;
        c    : in  std_logic;
        q    : out std_logic;
        notq : out std_logic);
end entity;

architecture behavioral of dig_d_ff is
  signal state : std_logic := tempval;
begin
  q    <= state;
  notq <= not (state);

  process (c)
  begin
    if rising_edge(c) then
      state <= d;
    end if;
  end process;
end architecture;

