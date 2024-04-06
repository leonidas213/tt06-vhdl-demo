LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity dig_neg is
  generic (bits : integer);
  port (
    p_in  : in  std_logic_vector((bits - 1) downto 0);
    p_out : out std_logic_vector((bits - 1) downto 0));
end entity;

architecture behavioral of dig_neg is
begin
  p_out <= std_logic_vector(- signed(p_in));
end architecture;

