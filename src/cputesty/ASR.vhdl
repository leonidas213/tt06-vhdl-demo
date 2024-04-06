LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- Arithmetic shift right. An unsigned division by two. 
  -- The lower bit is output as the carry bit, while the 
  -- uppermost bit rett_um_smallScpus unchanged in order to 
  -- obtain the sign.

entity ASR is
  port (
    Di : in  std_logic_vector(15 downto 0); -- data input
    C  : out std_logic;                     -- carry output
    Do : out std_logic_vector(15 downto 0)  -- data output
  );
end entity;

architecture Behavioral of ASR is
  signal s0 : std_logic;
begin
  C               <= Di(0);
  s0              <= Di(15);
  Do(13 downto 0) <= Di(14 downto 1);
  Do(14)          <= s0;
  Do(15)          <= s0;
end architecture;

