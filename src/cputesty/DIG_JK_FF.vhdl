LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity dig_jk_ff is
  generic (tempval : std_logic);
  port (
    q    : out std_logic;
    notq : out std_logic;
    j    : in  std_logic;
    c    : in  std_logic;
    k    : in  std_logic);
end entity;

architecture behavioral of dig_jk_ff is
  signal temp : std_logic := tempval;
begin
  process (c)
  begin
    if rising_edge(c) then
      if (j = '0' and k = '1') then
        temp <= '0';
      elsif (j = '1' and k = '0') then
        temp <= '1';
      elsif (j = '1' and k = '1') then
        temp <= not (temp);
      end if;
    end if;
  end process;
  q    <= temp;
  notq <= not (temp);
end architecture;

