LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity dig_ramdualport is
  generic (
    bits     : integer;
    addrbits : integer);
  port (
    d   : out std_logic_vector((bits - 1) downto 0);
    a   : in  std_logic_vector((addrbits - 1) downto 0);
    din : in  std_logic_vector((bits - 1) downto 0);
    str : in  std_logic;
    c   : in  std_logic;
    ld  : in  std_logic);
end entity;

architecture behavioral of dig_ramdualport is
  -- caution: uses distributed ram
  type memorytype is array (0 to (2 ** addrbits) - 1) of std_logic_vector((bits - 1) downto 0);
  signal memory : memorytype;
begin
  process (c)
  begin
    if rising_edge(c) and (str = '1') then
      memory(to_integer(unsigned(a))) <= din;
    end if;
  end process;
  d <= memory(to_integer(unsigned(a))) when ld = '1' else (others => 'z');
end architecture;

