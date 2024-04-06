LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- swaps the 4-bit nibble in the high- and the low-byte.

entity swapn is
  port (
    di : in  std_logic_vector(15 downto 0); -- data input
    do : out std_logic_vector(15 downto 0)  -- data output
  );
end entity;

architecture behavioral of swapn is
begin
  do(3 downto 0)   <= di(7 downto 4);
  do(7 downto 4)   <= di(3 downto 0);
  do(11 downto 8)  <= di(15 downto 12);
  do(15 downto 12) <= di(11 downto 8);
end architecture;

