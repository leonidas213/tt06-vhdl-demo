LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- moves the data word to the left to higher bits, so it multiplies 
  -- by two. the current carry bit is pushed in at the bottom, and 
  -- the most significant bit is output as a carry bit.

entity lsl is
  port (
    di : in  std_logic_vector(15 downto 0); -- data input
    ci : in  std_logic;                     -- carry input
    do : out std_logic_vector(15 downto 0); -- data output
    co : out std_logic                      -- carry output
  );
end entity;

architecture behavioral of lsl is
begin
  do(0)           <= ci;
  do(15 downto 1) <= di(14 downto 0);
  co              <= di(15);
end architecture;

