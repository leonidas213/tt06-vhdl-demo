LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity comp_gate_signed is
  generic (bits : integer);
  port (
    gr : out std_logic;
    eq : out std_logic;
    le : out std_logic;
    a  : in  std_logic_vector((bits - 1) downto 0);
    b  : in  std_logic_vector((bits - 1) downto 0));
end entity;

architecture behavioral of comp_gate_signed is
begin
  process (a, b)
  begin
    if (signed(a) > signed(b)) then
      le <= '0';
      eq <= '0';
      gr <= '1';
    elsif (signed(a) < signed(b)) then
      le <= '1';
      eq <= '0';
      gr <= '0';
    else
      le <= '0';
      eq <= '1';
      gr <= '0';
    end if;
  end process;
end architecture;

