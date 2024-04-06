LIBRARY IEEE;
  use ieee.std_logic_1164.all;

entity mux_gate_2 is
  port (
    p_out : out std_logic;
    sel   : in  std_logic_vector(1 downto 0);

    in_0  : in  std_logic;
    in_1  : in  std_logic;
    in_2  : in  std_logic;
    in_3  : in  std_logic);
end entity;

architecture behavioral of mux_gate_2 is
begin
  with sel select
    p_out <= in_0 when "00",
             in_1 when "01",
             in_2 when "10",
             in_3 when "11",
             '0'  when others;
end architecture;

