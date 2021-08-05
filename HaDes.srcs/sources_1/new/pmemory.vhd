----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Tim Muller
-- 
-- Create Date: 01.08.2021 13:38:20
-- Design Name: HaDes
-- Module Name: pmemory - Behavioral
-- Project Name: HaDes
-- Target Devices: BASYS 3 Xilinx Artix-7
-- Tool Versions: Vivado 2020.2
-- Description: Program Memory for the HaDes RISC CPU
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
library work;
use work.hadescomponents.all;
use work.all;

entity pmemory is
    generic(INIT    : string    := "UNUSED");
    port(   clk     : in  std_logic;
            reset   : in  std_logic; 
            RADR    : in STD_LOGIC_VECTOR (11 downto 0);
            LOADIR  : in STD_LOGIC;
            WADR    : in STD_LOGIC_VECTOR (11 downto 0);
            DATAIN  : in STD_LOGIC_VECTOR (31 downto 0);
            PWRITE  : in STD_LOGIC;
            DATAOUT : out STD_LOGIC_VECTOR (31 downto 0));
end pmemory;

architecture Behavioral of pmemory is
    component hades_ram32_dp
        generic(WIDTH_ADDR  : natural;
                INIT_FILE	: string     := "UNUSED";
                INIT_DATA   : mem_init_t := (0=>x"00000000"));
        port(   clk 		: in  std_logic;
                reset 		: in  std_logic;
                wena		: in  std_logic;
                waddr		: in  std_logic_vector(WIDTH_ADDR-1 downto 0);
                wdata		: in  std_logic_vector(31 downto 0);
                rena		: in  std_logic;
                raddr		: in  std_logic_vector(WIDTH_ADDR-1 downto 0);
                rdata		: out std_logic_vector(31 downto 0));
    end component;
begin

    mem : hades_ram32_dp
        generic map (WIDTH_ADDR => 12, INIT_FILE => INIT, INIT_DATA => hades_bootloader)
        port map (clk => clk, reset => reset, wena => PWRITE, waddr => WADR, wdata => DATAIN, rena => LOADIR, raddr => RADR, rdata => DATAOUT);

end Behavioral;
