LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity mux_gate_4 is
  port (
    p_out : out std_logic;
    sel   : in  std_logic_vector(3 downto 0);

    in_0  : in  std_logic;
    in_1  : in  std_logic;
    in_2  : in  std_logic;
    in_3  : in  std_logic;
    in_4  : in  std_logic;
    in_5  : in  std_logic;
    in_6  : in  std_logic;
    in_7  : in  std_logic;
    in_8  : in  std_logic;
    in_9  : in  std_logic;
    in_10 : in  std_logic;
    in_11 : in  std_logic;
    in_12 : in  std_logic;
    in_13 : in  std_logic;
    in_14 : in  std_logic;
    in_15 : in  std_logic);
end entity;

architecture behavioral of mux_gate_4 is
begin
  with sel select
    p_out <= in_0  when "0000",
             in_1  when "0001",
             in_2  when "0010",
             in_3  when "0011",
             in_4  when "0100",
             in_5  when "0101",
             in_6  when "0110",
             in_7  when "0111",
             in_8  when "1000",
             in_9  when "1001",
             in_10 when "1010",
             in_11 when "1011",
             in_12 when "1100",
             in_13 when "1101",
             in_14 when "1110",
             in_15 when "1111",
             '0'   when others;
end architecture;

