LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity singextend is
  port (
    inst : in  std_logic_vector(15 downto 0); -- instruction word
    n4s  : out std_logic_vector(15 downto 0); -- the four bits taken from rs.
    n8sd : out std_logic_vector(15 downto 0); -- the eight bits taken from rs,rd with sign extension.
    n4d  : out std_logic_vector(15 downto 0)  -- the four bits taken from rd.
  );
end entity;

architecture behavioral of singextend is
  signal s0 : std_logic;
begin
  n4d(3 downto 0)  <= inst(7 downto 4);
  n4d(15 downto 4) <= "000000000000";
  n4s(3 downto 0)  <= inst(3 downto 0);
  n4s(15 downto 4) <= "000000000000";
  s0               <= inst(7);
  n8sd(6 downto 0) <= inst(6 downto 0);
  n8sd(7)          <= s0;
  n8sd(8)          <= s0;
  n8sd(9)          <= s0;
  n8sd(10)         <= s0;
  n8sd(11)         <= s0;
  n8sd(12)         <= s0;
  n8sd(13)         <= s0;
  n8sd(14)         <= s0;
  n8sd(15)         <= s0;
end architecture;

