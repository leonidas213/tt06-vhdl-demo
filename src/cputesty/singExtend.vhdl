LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity singExtend is
  port (
    inst : in  std_logic_vector(15 downto 0); -- instruction word
    n4S  : out std_logic_vector(15 downto 0); -- The four bits taken from Rs.
    n8SD : out std_logic_vector(15 downto 0); -- The eight bits taken from Rs,Rd with sign extension.
    n4D  : out std_logic_vector(15 downto 0)  -- The four bits taken from Rd.
  );
end entity;

architecture Behavioral of singExtend is
  signal s0 : std_logic;
begin
  n4D(3 downto 0)  <= inst(7 downto 4);
  n4D(15 downto 4) <= "000000000000";
  n4S(3 downto 0)  <= inst(3 downto 0);
  n4S(15 downto 4) <= "000000000000";
  s0               <= inst(7);
  n8SD(6 downto 0) <= inst(6 downto 0);
  n8SD(7)          <= s0;
  n8SD(8)          <= s0;
  n8SD(9)          <= s0;
  n8SD(10)         <= s0;
  n8SD(11)         <= s0;
  n8SD(12)         <= s0;
  n8SD(13)         <= s0;
  n8SD(14)         <= s0;
  n8SD(15)         <= s0;
end architecture;

