-------------------------------------------------------------------------------
-- Copyright (c) 2013 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 13.3
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : ila_pro_0.vhd
-- /___/   /\     Timestamp  : Sun Jun 16 15:51:37 �й���׼ʱ�� 2013
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ila_pro_0 IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    CLK: in std_logic;
    TRIG0: in std_logic_vector(7 downto 0);
    TRIG1: in std_logic_vector(0 to 0);
    TRIG2: in std_logic_vector(0 to 0);
    TRIG3: in std_logic_vector(2 downto 0));
END ila_pro_0;

ARCHITECTURE ila_pro_0_a OF ila_pro_0 IS
BEGIN

END ila_pro_0_a;
