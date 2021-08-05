----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Tim Muller
-- 
-- Create Date: 02.08.2021 09:37:09
-- Design Name: HaDes
-- Module Name: control - Behavioral
-- Project Name: HaDes
-- Target Devices: BASYS 3 Xilinx Artix-7
-- Tool Versions: Vivado 2020.2
-- Description: Controler for the HaDes RISC CPU
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    Port ( clk      : in STD_LOGIC;
           reset    : in STD_LOGIC;
           
           inop     : in STD_LOGIC;
           outop    : in STD_LOGIC;
           loadop   : in STD_LOGIC;
           storeop  : in STD_LOGIC;
           dpma     : in STD_LOGIC;
           epma     : in STD_LOGIC;
           xack     : in STD_LOGIC;
           xpresent : in STD_LOGIC;
           dmembusy : in STD_LOGIC;
           
           loadir   : out STD_LOGIC;
           regwrite : out STD_LOGIC;
           pcwrite  : out STD_LOGIC;
           pwrite   : out STD_LOGIC;
           xread    : out STD_LOGIC;
           xwrite   : out STD_LOGIC;
           xnaintr  : out STD_LOGIC);
end control;


architecture Behavioral of control is
    type state_type is (IFETCH, IDECODE, ALU, IOREAD, IOWRITE, MEMREAD, MEMWRITE, XBUSNAINTR, WRITEBACK);
    signal state : state_type;
    signal next_state : state_type;
    signal pma : std_logic;
begin


    state_reg : process (clk, reset)
    begin
        if reset = '1' then
            state <= IFETCH;
        elsif rising_edge (clk) then
            state <= next_state;
        end if;
    end process state_reg;
    
    
    transition_logic : process (state, inop, outop, loadop, storeop, xpresent, xack, dmembusy, pma)
    begin
        case state is
        when IFETCH => next_state <= IDECODE;
        when IDECODE => next_state <= ALU;
        when ALU => 
            if inop = '1' then
                next_state <= IOREAD;
            elsif outop = '1' then
                next_state <= IOWRITE;
            elsif loadop = '1' then
                next_state <= MEMREAD;
            elsif storeop = '1' then
                next_state <= MEMWRITE;
            else
                next_state <= WRITEBACK;
            end if;
        when IOREAD =>
            if xpresent = '0' then
                next_state <= XBUSNAINTR;
            elsif xack = '1' then
                next_state <= WRITEBACK;
            else
                next_state <= IOREAD;
            end if;
        when IOWRITE =>
            if xpresent = '0' then
                next_state <= XBUSNAINTR;
            elsif xack = '1' then
                next_state <= WRITEBACK;
            else
                next_state <= IOWRITE;
            end if;
        when MEMREAD =>
            if dmembusy = '0' then
                next_state <= WRITEBACK;
            else
                next_state <= MEMREAD;
            end if;
        when MEMWRITE => 
            if pma = '1' then
                next_state <= WRITEBACK;
            elsif dmembusy = '0' then
                next_state <= WRITEBACK;
            else
                next_state <= MEMWRITE;
            end if;
        when XBUSNAINTR => next_state <= IFETCH;
        when WRITEBACK => next_state <= IFETCH;
        end case;
    end process transition_logic;
    
    
    output_logic : process (state, pma)
    begin
        case state is
        when IFETCH => 
            loadir <= '1';
            regwrite <= '0';
            pcwrite <= '0';
            pwrite <= '0';
            xread <= '0';
            xwrite <= '0';
            xnaintr <= '0';
        when IDECODE =>
            loadir <= '0';
            regwrite <= '0';
            pcwrite <= '0';
            pwrite <= '0';
            xread <= '0';
            xwrite <= '0';
            xnaintr <= '0';
        when ALU =>
            loadir <= '0';
            regwrite <= '0';
            pcwrite <= '0';
            pwrite <= '0';
            xread <= '0';
            xwrite <= '0';
            xnaintr <= '0';
        when IOREAD => 
            loadir <= '0';
            regwrite <= '0';
            pcwrite <= '0';
            pwrite <= '0';
            xread <= '1';
            xwrite <= '0';
            xnaintr <= '0';
        when IOWRITE => 
            loadir <= '0';
            regwrite <= '0';
            pcwrite <= '0';
            pwrite <= '0';
            xread <= '0';
            xwrite <= '1';
            xnaintr <= '0';
        when MEMREAD => 
            loadir <= '0';
            regwrite <= '0';
            pcwrite <= '0';
            pwrite <= '0';
            xread <= '1';
            xwrite <= '0';
            xnaintr <= '0';
        when MEMWRITE =>
            if pma = '1' then
                loadir <= '0';
                regwrite <= '0';
                pcwrite <= '0';
                pwrite <= '1';
                xread <= '0';
                xwrite <= '0';
                xnaintr <= '0';
            else
                loadir <= '0';
                regwrite <= '0';
                pcwrite <= '0';
                pwrite <= '0';
                xread <= '0';
                xwrite <= '1';
                xnaintr <= '0';
            end if;
        when XBUSNAINTR => 
            loadir <= '0';
            regwrite <= '0';
            pcwrite <= '1';
            pwrite <= '0';
            xread <= '0';
            xwrite <= '0';
            xnaintr <= '1';
        when WRITEBACK => 
            loadir <= '0';
            regwrite <= '1';
            pcwrite <= '1';
            pwrite <= '0';
            xread <= '0';
            xwrite <= '0';
            xnaintr <= '0';
        end case;
    end process output_logic;
    
    
    pma_logic : process (clk, reset)
        variable pma_v : std_logic := '0';
    begin
        if reset = '1' then
            pma_v := '1';
        elsif rising_edge (clk) then
            if dpma = '1' then
                pma_v := '0';
            elsif epma = '1' then
                pma_v := '1';
            end if;
            pma <= pma_v;
        end if;
    end process pma_logic;


end Behavioral;
