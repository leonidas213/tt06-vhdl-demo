LIBRARY IEEE;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

  -- Register for storing large constants.
  -- There is a 1-bit command describing this register. 
  -- In this way, 15 bits can be stored (the 16th bit 
  -- activates the writing of this register and therefore 
  -- is always one). The 16th bit will be set according 
  -- to the 'immediate extend mode' (iem).

entity ImReg is
  port (
    en   : in  std_logic;                     -- enables storage
    iem  : in  std_logic_vector(1 downto 0);  -- immediate extend mode (0: sign extend; 1: extend with 0, 2:extend with S0, 3:extend with D0)
    C    : in  std_logic;
    inst : in  std_logic_vector(15 downto 0); -- the current instruction
    imm  : out std_logic_vector(15 downto 0)  -- The constant of register contents and bit 8.
  );
end entity;

architecture Behavioral of ImReg is
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
  gate0: entity work.DIG_Register_BUS -- imm
  generic map (
    Bits => 15) port map (
    D  => s0,
    C  => C,
    en => en,
    Q  => s1);
                s5 <= s1(14);
  MUX_GATE_2inst1: entity work.MUX_GATE_2
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

