LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity DIG_D_FF is
  generic (
    tempval : std_logic);
  port (D    : in  std_logic;
        C    : in  std_logic;
        Q    : out std_logic;
        notQ : out std_logic);
end entity;

architecture Behavioral of DIG_D_FF is
  signal state : std_logic := tempval;
begin
  Q    <= state;
  notQ <= not (state);

  process (C)
  begin
    if rising_edge(C) then
      state <= D;
    end if;
  end process;
end architecture;

