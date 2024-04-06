LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- Swaps the high-byte and the low-byte.

entity SWAP is
  port (
    Di : in  std_logic_vector(15 downto 0); -- data input
    Do : out std_logic_vector(15 downto 0)  -- data output
  );
end entity;

architecture Behavioral of SWAP is
begin
  Do(7 downto 0)  <= Di(15 downto 8);
  Do(15 downto 8) <= Di(7 downto 0);
end architecture;

