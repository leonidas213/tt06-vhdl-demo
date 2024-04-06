LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  --USE ieee.std_logic_unsigned.all;

entity DIG_Add is
  generic (Bits : integer);
  port (
    s   : out std_logic_vector((Bits - 1) downto 0);
    c_o : out std_logic;
    a   : in  std_logic_vector((Bits - 1) downto 0);
    b   : in  std_logic_vector((Bits - 1) downto 0);
    c_i : in  std_logic);
end entity;

architecture Behavioral of DIG_Add is
  function FullAdder(input1, input2, Cin : std_logic) return std_logic is
  begin
    return (input1 xor input2 xor Cin);
  end function;

  function CarryOut(input1, input2, Cin : std_logic) return std_logic is
  begin
    return ((input1 and input2) or (Cin and (input1 xor input2)));
  end function;
  signal Carry : std_logic;
  signal temp  : std_logic_vector(Bits downto 0);
begin
  process (a, b, c_i)
  begin
    Carry <= c_i;
    for i in 0 to Bits - 1 loop
      s(i) <= FullAdder(a(i), b(i), Carry);
      Carry <= CarryOut(a(i), b(i), Carry);
    end loop;
    c_o <= Carry;
  end process;

end architecture;

