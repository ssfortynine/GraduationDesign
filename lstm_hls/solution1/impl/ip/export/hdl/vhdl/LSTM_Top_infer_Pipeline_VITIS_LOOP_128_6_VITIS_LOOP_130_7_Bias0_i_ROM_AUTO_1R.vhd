-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity LSTM_Top_infer_Pipeline_VITIS_LOOP_128_6_VITIS_LOOP_130_7_Bias0_i_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 128
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of LSTM_Top_infer_Pipeline_VITIS_LOOP_128_6_VITIS_LOOP_130_7_Bias0_i_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00111101100011010100101000111110", 1 => "10111101010001011011010001100101", 2 => "00111100101101011100110101001100", 3 => "00111101000101011011001010111101", 
    4 => "10111101000001010011110001111000", 5 => "10111101011100011010000001010110", 6 => "00111110000000001011101000111010", 7 => "10111100101101110111100100000011", 
    8 => "00111100111000011011010110111000", 9 => "10111110001001011110011101100100", 10 => "10111101110000001000000000111110", 11 => "00111101110000011111110111001000", 
    12 => "10111101011010111011111110001100", 13 => "00111101010011010011000000101111", 14 => "00111010000000011101000111000001", 15 => "00111100110111111001101100101011", 
    16 => "00111101001001101100011111001101", 17 => "10111101100001000010011001011000", 18 => "10111110000100001010100110110110", 19 => "10111101000100101010111011110111", 
    20 => "10111101011010000000100010001000", 21 => "00111110001101001010000110001100", 22 => "10111101101110110110011111010001", 23 => "00111101100110011000010111110000", 
    24 => "00111100111011000101110000011001", 25 => "10111110010111011111010101110001", 26 => "10111101011000010001010110000100", 27 => "00111101011101001110000111001111", 
    28 => "00111101100110010010000010010000", 29 => "10111101111111001000010011011110", 30 => "10111101100010011110100110010101", 31 => "00111110110100001000101101111101", 
    32 => "10111110010011001000101000101010", 33 => "10111100001111101001011111101011", 34 => "10111101001100001001011010001110", 35 => "00111110101111000010000001100111", 
    36 => "10111100111000101110101011110111", 37 => "10111101000100001000001011101101", 38 => "00111100000001111010100101010000", 39 => "10111101100111000100000111001001", 
    40 => "10111110001111100000100111001001", 41 => "00111101100001010111001000001110", 42 => "00111100011101101111000101101110", 43 => "10111101100100001001100100000110", 
    44 => "00111110110110011111101100110010", 45 => "10111110001000001010010100111011", 46 => "10111101100011011101101100000111", 47 => "10111101111100100101000000100010", 
    48 => "00111110000001000011111001101110", 49 => "00111100100100011101010001111001", 50 => "10111100110100111110001111001000", 51 => "00111100111101011101110011011100", 
    52 => "00111110001001110100010001011011", 53 => "10111101110001111011111000001101", 54 => "00111110100111010111111110101101", 55 => "10111101111010101010010011100010", 
    56 => "10111101010110101101100000100110", 57 => "10111010101010110010110011001000", 58 => "00111101000011000100011101011001", 59 => "10111101001000110011001110101111", 
    60 => "00111101110100011110011111011010", 61 => "10111101100100110110010101100111", 62 => "10111101110011000010100011100000", 63 => "00111101000111011011110011100100", 
    64 => "00111110001001011000110010111110", 65 => "00111110000100000001100101110100", 66 => "10111100111110001001110100110000", 67 => "10111110000011111101101101100001", 
    68 => "10111101110110001110010001110101", 69 => "10111101000101000111010001000110", 70 => "00111101101000111011011011000110", 71 => "00111111100001111111101001000100", 
    72 => "10111110000010110010101110101101", 73 => "00111100111101101000111010111101", 74 => "00111101110001101001010010000000", 75 => "10111101110010101000110111100011", 
    76 => "00111101111010100101100101100010", 77 => "10111100111101000101010000100000", 78 => "10111101111001110111101111000000", 79 => "10111101101101010110011010101010", 
    80 => "10111100000110001010111111001100", 81 => "00111101100100011100010110110111", 82 => "00111110100111011011010001111111", 83 => "00111101000111000011000010100101", 
    84 => "00111101101110110111101000110011", 85 => "10111100001010011011101111110001", 86 => "10111011111101000101100111011110", 87 => "00111011111001010110111100111111", 
    88 => "00111110001101110110001110010100", 89 => "00111101000100101100110110110101", 90 => "00111101101110000100100000011110", 91 => "00111101100101101100000110010110", 
    92 => "10111110010110111001110101010001", 93 => "00111100101110100100001010111100", 94 => "10111101111011110000011011101001", 95 => "10111110000000000101101011001000", 
    96 => "10111101101111001101010111001001", 97 => "10111101101001100101011100110001", 98 => "00111100111100001010010110010101", 99 => "00111101011001111000100001000111", 
    100 => "10111110001010011111100010101110", 101 => "10111100110110011011010111001111", 102 => "10111101000000011110110001111111", 103 => "00111110000011000110010011110000", 
    104 => "00111110000111011110011100111100", 105 => "00111110000101011101011100100011", 106 => "00111110000010100101110110100010", 107 => "00111110110011100000100011000110", 
    108 => "00111101111100011111100110010010", 109 => "00111100001010001111000100011011", 110 => "10111101101000100000010000101101", 111 => "10111100101111011000010011100001", 
    112 => "00111101001000010000001101001011", 113 => "00111101101110000001100010111000", 114 => "10111101110110000110100000100110", 115 => "00111100100001011101001011101000", 
    116 => "00111101101010111001111110101110", 117 => "00111110001110000110100110011110", 118 => "10111101000010000011101000101011", 119 => "10111101101111100111001111110101", 
    120 => "10111101100110011010100001011100", 121 => "10111101011111100101100111001000", 122 => "00111111000111010100011010111011", 123 => "00111101010001101111101011101001", 
    124 => "10111101111111010010101011001110", 125 => "00111110000011011100010001111001", 126 => "00111101101010110010110011100111", 127 => "00111101001101000000010000011001");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

