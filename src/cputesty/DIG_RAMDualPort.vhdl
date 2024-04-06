LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity DIG_RAMDualPort is
  generic (
    Bits     : integer;
    AddrBits : integer);
  port (
    D   : out std_logic_vector((Bits - 1) downto 0);
    A   : in  std_logic_vector((AddrBits - 1) downto 0);
    Din : in  std_logic_vector((Bits - 1) downto 0);
    str : in  std_logic;
    C   : in  std_logic;
    ld  : in  std_logic);
end entity;

architecture Behavioral of DIG_RAMDualPort is
  -- CAUTION: uses distributed RAM
  type memoryType is array (0 to (2 ** AddrBits) - 1) of STD_LOGIC_VECTOR((Bits - 1) downto 0);
  signal memory : memoryType;
begin
  process (C)
  begin
    if rising_edge(C) and (str = '1') then
      memory(to_integer(unsigned(A))) <= Din;
    end if;
  end process;
  D <= memory(to_integer(unsigned(A))) when ld = '1' else (others => 'Z');
end architecture;

