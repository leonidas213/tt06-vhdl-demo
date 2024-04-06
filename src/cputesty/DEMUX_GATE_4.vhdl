LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity demux_gate_4 is
  generic (
    tempval : integer);
  port (
    out_0  : out std_logic;
    out_1  : out std_logic;
    out_2  : out std_logic;
    out_3  : out std_logic;
    out_4  : out std_logic;
    out_5  : out std_logic;
    out_6  : out std_logic;
    out_7  : out std_logic;
    out_8  : out std_logic;
    out_9  : out std_logic;
    out_10 : out std_logic;
    out_11 : out std_logic;
    out_12 : out std_logic;
    out_13 : out std_logic;
    out_14 : out std_logic;
    out_15 : out std_logic;
    sel    : in  std_logic_vector(3 downto 0);
    p_in   : in  std_logic);
end entity;

architecture behavioral of demux_gate_4 is
begin
  out_0  <= p_in when sel = "0000" else std_logic(to_unsigned(tempval, 1)(0));
  out_1  <= p_in when sel = "0001" else std_logic(to_unsigned(tempval, 1)(0));
  out_2  <= p_in when sel = "0010" else std_logic(to_unsigned(tempval, 1)(0));
  out_3  <= p_in when sel = "0011" else std_logic(to_unsigned(tempval, 1)(0));
  out_4  <= p_in when sel = "0100" else std_logic(to_unsigned(tempval, 1)(0));
  out_5  <= p_in when sel = "0101" else std_logic(to_unsigned(tempval, 1)(0));
  out_6  <= p_in when sel = "0110" else std_logic(to_unsigned(tempval, 1)(0));
  out_7  <= p_in when sel = "0111" else std_logic(to_unsigned(tempval, 1)(0));
  out_8  <= p_in when sel = "1000" else std_logic(to_unsigned(tempval, 1)(0));
  out_9  <= p_in when sel = "1001" else std_logic(to_unsigned(tempval, 1)(0));
  out_10 <= p_in when sel = "1010" else std_logic(to_unsigned(tempval, 1)(0));
  out_11 <= p_in when sel = "1011" else std_logic(to_unsigned(tempval, 1)(0));
  out_12 <= p_in when sel = "1100" else std_logic(to_unsigned(tempval, 1)(0));
  out_13 <= p_in when sel = "1101" else std_logic(to_unsigned(tempval, 1)(0));
  out_14 <= p_in when sel = "1110" else std_logic(to_unsigned(tempval, 1)(0));
  out_15 <= p_in when sel = "1111" else std_logic(to_unsigned(tempval, 1)(0));
end architecture;

