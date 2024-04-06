LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  --USE ieee.std_logic_unsigned.all;

entity DIG_Sub is
  generic (Bits : integer);
  port (
    s   : out std_logic_vector((Bits - 1) downto 0);
    c_o : out std_logic;
    a   : in  std_logic_vector((Bits - 1) downto 0);
    b   : in  std_logic_vector((Bits - 1) downto 0);
    c_i : in  std_logic);
end entity;

architecture Behavioral of DIG_Sub is
  function FullSubtractor(input1, input2, Bin : std_logic) return std_logic is
  begin
    return (input1 xor input2 xor Bin);
  end function;

  function BorrowOut(input1, input2, Bin : std_logic) return std_logic is
  begin
    return ((not input1 and input2) or ((not input1) and Bin) or (Bin and input2));
  end function;

  signal Temp_Borrow : std_logic;
begin
  process (a, b, c_i)
  begin
    Temp_Borrow <= c_i;
    for i in 0 to Bits - 1 loop
      s(i) <= FullSubtractor(a(i), b(i), Temp_Borrow);
      Temp_Borrow <= BorrowOut(a(i), b(i), Temp_Borrow);
    end loop;

    c_o <= Temp_Borrow;
  end process;

end architecture;

