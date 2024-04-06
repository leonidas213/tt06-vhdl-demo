LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- Swaps the 4-bit nibble in the high- and the low-byte.

entity SWAPN is
  port (
    Di : in  std_logic_vector(15 downto 0); -- Data input
    Do : out std_logic_vector(15 downto 0)  -- Data output
  );
end entity;

architecture Behavioral of SWAPN is
begin
  Do(3 downto 0)   <= Di(7 downto 4);
  Do(7 downto 4)   <= Di(3 downto 0);
  Do(11 downto 8)  <= Di(15 downto 12);
  Do(15 downto 12) <= Di(11 downto 8);
end architecture;

