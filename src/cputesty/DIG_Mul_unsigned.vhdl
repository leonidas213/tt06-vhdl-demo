LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity DIG_Mul_unsigned is
  generic (Bits : integer);
  port (
    a   : in  std_logic_vector((Bits - 1) downto 0);
    b   : in  std_logic_vector((Bits - 1) downto 0);
    mul : out std_logic_vector((Bits * 2 - 1) downto 0));
end entity;

architecture Behavioral of DIG_Mul_unsigned is
begin

  mul <= std_logic_vector(unsigned(a) * unsigned(b));

end architecture;

