LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity DIG_Neg is
  generic (Bits : integer);
  port (
    p_in  : in  std_logic_vector((Bits - 1) downto 0);
    p_out : out std_logic_vector((Bits - 1) downto 0));
end entity;

architecture Behavioral of DIG_Neg is
begin
  p_out <= std_logic_vector(- signed(p_in));
end architecture;

