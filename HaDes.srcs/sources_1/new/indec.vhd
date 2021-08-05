----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Tim Muller
-- 
-- Create Date: 01.08.2021 16:46:03
-- Design Name: HaDes
-- Module Name: indec - Behavioral
-- Project Name: HaDes
-- Target Devices: BASYS 3 Xilinx Artix-7
-- Tool Versions: Vivado 2020.2
-- Description: Instruction decoder for the HaDes RISC CPU
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

entity indec is
    Port ( iword    : in STD_LOGIC_VECTOR (31 downto 0);
           aopadr   : out STD_LOGIC_VECTOR (2 downto 0);
           bopadr   : out STD_LOGIC_VECTOR (2 downto 0);
           wopadr   : out STD_LOGIC_VECTOR (2 downto 0);
           iop      : out STD_LOGIC_VECTOR (15 downto 0);
           ivalid   : out STD_LOGIC;
           opc      : out STD_LOGIC_VECTOR (4 downto 0);
           pccontr  : out STD_LOGIC_VECTOR (10 downto 0);
           inop     : out STD_LOGIC;
           outop    : out STD_LOGIC;
           loadop   : out STD_LOGIC;
           storeop  : out STD_LOGIC;
           dmemop   : out STD_LOGIC;
           selxres  : out STD_LOGIC;
           dpma     : out STD_LOGIC;
           epma     : out STD_LOGIC);
end indec;

architecture Behavioral of indec is
begin

    aopadr <= iword(19 downto 17);
    with iword(31 downto 28) select bopadr <=
        iword(22 downto 20) when "0011" | "1001",
        iword(15 downto 13) when others;
    with iword(31 downto 28) select wopadr <=
        "000" when "0011" | "1001",
        iword(22 downto 20) when others;
        
    iop <= iword(15 downto 0);
    ivalid <= iword(16);
    opc <= iword(27 downto 23);
    
    with iword(31 downto 23) select pccontr <=
        "01000000000" when "000000010",
        "10100000000" when "1010-----",
        "00010000000" when "1011-----",
        "00001000000" when "1100-----",
        "00000100000" when "0001-----",
        "00000010000" when "0100-----",
        "10000001000" when "1101-----",
        "10000000100" when "0111-----",
        "10000000010" when "0110-----",
        "10000000001" when "0101-----",
        "00000000000" when others;
    
    inop <= '1' when iword(31 downto 28) = "0010" else '0';
    outop <= '1' when iword(31 downto 28) = "0011" else '0';
    loadop <= '1' when iword(31 downto 28) = "1000" else '0';
    storeop <= '1' when iword(31 downto 28) = "1001" else '0';
    dmemop <= '1' when iword(31 downto 28) = "1000" or iword(31 downto 28) = "1001" else '0';
    selxres <= '1' when iword(31 downto 28) = "0010" or iword(31 downto 28) = "0011" or iword(31 downto 28) = "1000" or iword(31 downto 28) = "1001" else '0';
    dpma <= '1' when iword(31 downto 28) = "1110" else '0';
    epma <= '1' when iword(31 downto 28) = "1111" else '0';

end Behavioral;
