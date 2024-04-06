LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- swaps the high-byte and the low-byte.

entity swap is
  port (
    di : in  std_logic_vector(15 downto 0); -- data input
    do : out std_logic_vector(15 downto 0)  -- data output
  );
end entity;

architecture behavioral of swap is
begin
  do(7 downto 0)  <= di(15 downto 8);
  do(15 downto 8) <= di(7 downto 0);
end architecture;

