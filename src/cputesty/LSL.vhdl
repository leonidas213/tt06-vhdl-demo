LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- Moves the data word to the left to higher bits, so it multiplies 
  -- by two. The current carry bit is pushed in at the bottom, and 
  -- the most significant bit is output as a carry bit.

entity LSL is
  port (
    Di : in  std_logic_vector(15 downto 0); -- data input
    Ci : in  std_logic;                     -- carry input
    Do : out std_logic_vector(15 downto 0); -- data output
    Co : out std_logic                      -- carry output
  );
end entity;

architecture Behavioral of LSL is
begin
  Do(0)           <= Ci;
  Do(15 downto 1) <= Di(14 downto 0);
  Co              <= Di(15);
end architecture;

