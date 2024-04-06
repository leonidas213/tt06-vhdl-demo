LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity DIG_JK_FF is
  generic (tempval : std_logic);
  port (
    Q    : out std_logic;
    notQ : out std_logic;
    J    : in  std_logic;
    C    : in  std_logic;
    K    : in  std_logic);
end entity;

architecture Behavioral of DIG_JK_FF is
  signal temp : std_logic := tempval;
begin
  process (C)
  begin
    if rising_edge(C) then
      if (J = '0' and K = '1') then
        temp <= '0';
      elsif (J = '1' and K = '0') then
        temp <= '1';
      elsif (J = '1' and K = '1') then
        temp <= not (temp);
      end if;
    end if;
  end process;
  Q    <= temp;
  notQ <= not (temp);
end architecture;

