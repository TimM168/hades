----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.08.2021 16:53:48
-- Design Name: 
-- Module Name: datapath - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
    Port ( AOP : in STD_LOGIC_VECTOR (31 downto 0);
           BOP : in STD_LOGIC_VECTOR (31 downto 0);
           IOP : in STD_LOGIC_VECTOR (15 downto 0);
           XDATAIN : in STD_LOGIC_VECTOR (31 downto 0);
           IVALID : in STD_LOGIC;
           OPC : in STD_LOGIC_VECTOR (4 downto 0);
           JAL : in STD_LOGIC;
           RELA : in STD_LOGIC;
           SELXRES : in STD_LOGIC;
           PCINC : in STD_LOGIC_VECTOR (11 downto 0);
           REGWRITE : in STD_LOGIC;
           WOP : out STD_LOGIC_VECTOR (31 downto 0);
           XADR : out STD_LOGIC_VECTOR (12 downto 0);
           XDATAOUT : out STD_LOGIC_VECTOR (31 downto 0);
           PCNEW : out STD_LOGIC_VECTOR (11 downto 0);
           SISALVL : out STD_LOGIC_VECTOR (1 downto 0);
           OV : out STD_LOGIC;
           ZERO : out STD_LOGIC);
end datapath;

architecture Behavioral of datapath is

begin


end Behavioral;
