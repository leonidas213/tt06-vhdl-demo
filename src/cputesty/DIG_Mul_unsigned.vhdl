LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity dig_mul_unsigned is
  generic (bits : integer);
  port (
    a   : in  std_logic_vector((bits - 1) downto 0);
    b   : in  std_logic_vector((bits - 1) downto 0);
    mul : out std_logic_vector((bits * 2 - 1) downto 0));
end entity;

architecture behavioral of dig_mul_unsigned is
begin

  mul <= std_logic_vector(unsigned(a) * unsigned(b));

end architecture;

