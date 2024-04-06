LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- register for storing large constants.
  -- there is a 1-bit command describing this register. 
  -- in this way, 15 bits can be stored (the 16th bit 
  -- activates the writing of this register and therefore 
  -- is always one). the 16th bit will be set according 
  -- to the 'immediate extend mode' (iem).

entity imreg is
  port (
    en   : in  std_logic;                     -- enables storage
    iem  : in  std_logic_vector(1 downto 0);  -- immediate extend mode (0: sign extend; 1: extend with 0, 2:extend with s0, 3:extend with d0)
    c    : in  std_logic;
    inst : in  std_logic_vector(15 downto 0); -- the current instruction
    imm  : out std_logic_vector(15 downto 0)  -- the constant of register contents and bit 8.
  );
end entity;

architecture behavioral of imreg is
  signal s0 : std_logic_vector(14 downto 0);
  signal s1 : std_logic_vector(14 downto 0);
  signal s2 : std_logic;
  signal s3 : std_logic;
  signal s4 : std_logic;
  signal s5 : std_logic;
begin
                s2 <= inst(0);
                s3 <= inst(4);
                s0 <= inst(14 downto 0);
  gate0: entity dig_register_bus -- imm
  generic map (
    bits => 15) port map (
    d  => s0,
    c  => c,
    en => en,
    q  => s1);
                s5 <= s1(14);
  mux_gate_2inst1: entity mux_mux_gate_2inst_2
      port map (
      sel   => iem,
      in_0  => s5,
      in_1  => '0',
      in_2  => s2,
      in_3  => s3,
      p_out => s4);
  imm(14 downto 0) <= s1;
  imm(15)          <= s4;
end architecture;

