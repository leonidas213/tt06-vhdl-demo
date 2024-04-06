LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  --use ieee.std_logic_unsigned.all;

entity dig_sub is
  generic (bits : integer);
  port (
    s   : out std_logic_vector((bits - 1) downto 0);
    c_o : out std_logic;
    a   : in  std_logic_vector((bits - 1) downto 0);
    b   : in  std_logic_vector((bits - 1) downto 0);
    c_i : in  std_logic);
end entity;

architecture behavioral of dig_sub is
  function fullsubtractor(input1, input2, bin : std_logic) return std_logic is
  begin
    return (input1 xor input2 xor bin);
  end function;

  function borrowout(input1, input2, bin : std_logic) return std_logic is
  begin
    return ((not input1 and input2) or ((not input1) and bin) or (bin and input2));
  end function;

  signal temp_borrow : std_logic;
begin
  process (a, b, c_i)
  begin
    temp_borrow <= c_i;
    for i in 0 to bits - 1 loop
      s(i) <= fullsubtractor(a(i), b(i), temp_borrow);
      temp_borrow <= borrowout(a(i), b(i), temp_borrow);
    end loop;

    c_o <= temp_borrow;
  end process;

end architecture;

