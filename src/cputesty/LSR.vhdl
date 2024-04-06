LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- shift right. so a division by two.
  -- the carry bit is inserted at the top. and the least 
  -- significant bit is output as a new carry bit.

entity lsr is
  port (
    di : in  std_logic_vector(15 downto 0); -- data input
    ci : in  std_logic;                     -- carry input
    do : out std_logic_vector(15 downto 0); -- data output
    co : out std_logic                      -- carry output
  );
end entity;

architecture behavioral of lsr is
begin
  do(14 downto 0) <= di(15 downto 1);
  do(15)          <= ci;
  co              <= di(0);
end architecture;

