----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Tim Muller
-- 
-- Create Date: 16.08.2021 17:10:00
-- Design Name: HaDes
-- Module Name: alu - Behavioral
-- Project Name: HaDes
-- Target Devices: BASYS 3 Xilinx Artix-7
-- Tool Versions: Vivado 2020.2
-- Description: ALU for the HaDes RISC CPU
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
library xbus_common;
	use xbus_common.xtoolbox.all;

entity alu is
    Generic(data_width : natural := 32);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           
           OPCODE : in STD_LOGIC_VECTOR (4 downto 0);
           ACHANNEL : in STD_LOGIC_VECTOR (31 downto 0);
           BCHANNEL : in STD_LOGIC_VECTOR (31 downto 0);
           RESULT : out STD_LOGIC_VECTOR (31 downto 0);
           
           REGWRITE : in STD_LOGIC;
           ZERO : out STD_LOGIC;
           OVERFLOW : out STD_LOGIC);
end alu;


architecture Behavioral of alu is
    component hades_addsub is
        generic (N	: natural);
        port (
            -- control
            sub	: in  std_logic;
            -- input
            a	: in  std_logic_vector(N-1 downto 0);
            b	: in  std_logic_vector(N-1 downto 0);
            -- output
            r	: out std_logic_vector(N-1 downto 0);	
            ov	: out std_logic);
    end component;
    component hades_compare is
        generic (N	: natural := 32);
        port (
            -- input
            a	: in  std_logic_vector(N-1 downto 0);
            b	: in  std_logic_vector(N-1 downto 0);
            -- output
            lt	: out std_logic;
            eq	: out std_logic;
            gt  : out std_logic);
    end component;
    component hades_mul is
        generic (N	: natural);
        port (
            -- common
            clk : in  std_logic;
            -- input
            a	: in  std_logic_vector(N-1 downto 0);
            b	: in  std_logic_vector(N-1 downto 0);
            -- output
            r	: out std_logic_vector(N-1 downto 0);	
            ov	: out std_logic);
    end component;
    component hades_shift is
        generic (N	: natural);
        port (
            -- control
            cyclic		: in  std_logic;
            right		: in  std_logic;
            -- input
            a			: in  std_logic_vector(N-1 downto 0);
            b			: in  std_logic_vector(log2(N)-1 downto 0);
            -- output
            r			: out std_logic_vector(N-1 downto 0);
            ov			: out std_logic);
    end component;
    signal sub_reg : std_logic;
    signal as_ov_reg : std_logic;
    signal as_res_reg : std_logic_vector(data_width-1 downto 0);
    signal mul_ov_reg : std_logic;
    signal mul_res_reg : std_logic_vector(data_width-1 downto 0);
    signal lt_reg : std_logic;
    signal eq_reg : std_logic;
    signal gt_reg : std_logic;
    signal cyclic_reg : std_logic;
    signal right_reg : std_logic;
    signal s_ov_reg : std_logic;
    signal s_res_reg : std_logic_vector(data_width-1 downto 0);
    
begin

    addsub : hades_addsub
        generic map (N => data_width)
        port map (a => ACHANNEL, b => BCHANNEL, sub => sub_reg, r => as_res_reg, ov => as_ov_reg);
    compare : hades_compare
        generic map (N => data_width)
        port map (a => ACHANNEL, b => BCHANNEL, lt => lt_reg, eq => eq_reg, gt => gt_reg);
    mul : hades_mul
        generic map (N => data_width)
        port map (clk => clk, a => ACHANNEL, b => BCHANNEL, r => mul_res_reg, ov => mul_ov_reg);
    shift : hades_shift
        generic map (N => data_width)
        port map (cyclic => cyclic_reg, right => right_reg, a => ACHANNEL, b => BCHANNEL, r => s_res_reg, ov => s_ov_reg);

end Behavioral;
