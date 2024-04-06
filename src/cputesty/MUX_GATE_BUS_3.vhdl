LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity MUX_GATE_BUS_3 is
  generic (Bits : integer);
  port (
    p_out : out std_logic_vector((Bits - 1) downto 0);
    sel   : in  std_logic_vector(2 downto 0);

    in_0  : in  std_logic_vector((Bits - 1) downto 0);
    in_1  : in  std_logic_vector((Bits - 1) downto 0);
    in_2  : in  std_logic_vector((Bits - 1) downto 0);
    in_3  : in  std_logic_vector((Bits - 1) downto 0);
    in_4  : in  std_logic_vector((Bits - 1) downto 0);
    in_5  : in  std_logic_vector((Bits - 1) downto 0);
    in_6  : in  std_logic_vector((Bits - 1) downto 0);
    in_7  : in  std_logic_vector((Bits - 1) downto 0));
end entity;

architecture Behavioral of MUX_GATE_BUS_3 is
begin
  with sel select
    p_out <=                         in_0 when "000",
                                     in_1 when "001",
                                     in_2 when "010",
                                     in_3 when "011",
                                     in_4 when "100",
                                     in_5 when "101",
                                     in_6 when "110",
                                     in_7 when "111",
                     (others => '0') when others;
end architecture;

