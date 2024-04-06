LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  --use ieee.std_logic_unsigned.all;

entity dig_add is
  generic (bits : integer);
  port (
    s   : out std_logic_vector((bits - 1) downto 0);
    c_o : out std_logic;
    a   : in  std_logic_vector((bits - 1) downto 0);
    b   : in  std_logic_vector((bits - 1) downto 0);
    c_i : in  std_logic);
end entity;

architecture behavioral of dig_add is
  function fulladder(input1, input2, cin : std_logic) return std_logic is
  begin
    return (input1 xor input2 xor cin);
  end function;

  function carryout(input1, input2, cin : std_logic) return std_logic is
  begin
    return ((input1 and input2) or (cin and (input1 xor input2)));
  end function;
  signal carry : std_logic;
  signal temp  : std_logic_vector(bits downto 0);
begin
  process (a, b, c_i)
  begin
    carry <= c_i;
    for i in 0 to bits - 1 loop
      s(i) <= fulladder(a(i), b(i), carry);
      carry <= carryout(a(i), b(i), carry);
    end loop;
    c_o <= carry;
  end process;

end architecture;

