LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- Shift right. So a division by two.
  -- The carry bit is inserted at the top. And the least 
  -- significant bit is output as a new carry bit.

entity LSR is
  port (
    Di : in  std_logic_vector(15 downto 0); -- data input
    Ci : in  std_logic;                     -- carry input
    Do : out std_logic_vector(15 downto 0); -- data output
    Co : out std_logic                      -- carry output
  );
end entity;

architecture Behavioral of LSR is
begin
  Do(14 downto 0) <= Di(15 downto 1);
  Do(15)          <= Ci;
  Co              <= Di(0);
end architecture;

