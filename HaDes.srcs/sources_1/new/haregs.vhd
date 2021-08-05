----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Tim Muller
-- 
-- Create Date: 01.08.2021 18:08:42
-- Design Name: HaDes
-- Module Name: haregs - Behavioral
-- Project Name: HaDes
-- Target Devices: BASYS 3 Xilinx Artix-7
-- Tool Versions: Vivado 2020.2
-- Description: Registers for the HaDes RISC CPU
-- 
-- Dependencies: -
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: -
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity haregs is
    Port ( clk      : in STD_LOGIC;
           reset    : in STD_LOGIC;
           aopadr   : in STD_LOGIC_VECTOR (2 downto 0);
           bopadr   : in STD_LOGIC_VECTOR (2 downto 0);
           wopadr   : in STD_LOGIC_VECTOR (2 downto 0);
           wop      : in STD_LOGIC_VECTOR (31 downto 0);
           regwrite : in STD_LOGIC;
           aop      : out STD_LOGIC_VECTOR (31 downto 0);
           bop      : out STD_LOGIC_VECTOR (31 downto 0));
end haregs;

architecture Behavioral of haregs is
    type mem_type is array(0 to 7) of std_logic_vector(31 DOWNTO 0);
    signal reg : mem_type;
begin

    process (reset, clk)
    begin
        if reset = '1' then
            reg <= (others => x"00000000");
        elsif rising_edge (clk) then
            if regwrite = '1' and wopadr /= "000" then
                reg(to_integer(unsigned(wopadr))) <= wop;
            end if;
        end if;
    end process;
    
    aop <= reg(to_integer(unsigned(aopadr)));
    bop <= reg(to_integer(unsigned(bopadr)));

end Behavioral;
