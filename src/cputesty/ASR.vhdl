LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- arithmetic shift right. an unsigned division by two. 
  -- the lower bit is output as the carry bit, while the 
  -- uppermost bit rett_um_smallScpus unchanged in order to 
  -- obtain the sign.

entity asr is
  port (
    di : in  std_logic_vector(15 downto 0); -- data input
    c  : out std_logic;                     -- carry output
    do : out std_logic_vector(15 downto 0)  -- data output
  );
end entity;

architecture behavioral of asr is
  signal s0 : std_logic;
begin
  c               <= di(0);
  s0              <= di(15);
  do(13 downto 0) <= di(14 downto 1);
  do(14)          <= s0;
  do(15)          <= s0;
end architecture;

