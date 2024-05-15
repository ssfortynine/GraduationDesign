-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity LSTM_Top_infer_Pipeline_VITIS_LOOP_114_4_VITIS_LOOP_116_5_Bias0_f_ROM_AUTO_1R is 
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


architecture rtl of LSTM_Top_infer_Pipeline_VITIS_LOOP_114_4_VITIS_LOOP_116_5_Bias0_f_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00111101010001000010001010001111", 1 => "00111101111011001000000001001110", 2 => "10111110001010111111100011000000", 3 => "10111101101000011010110000011001", 
    4 => "10111110000101000100100000000110", 5 => "10111101000100101101001010010000", 6 => "10111101110100101010010001111101", 7 => "10111110001001101000111011010011", 
    8 => "00111100101001111111011110100110", 9 => "10111101001111000011011001001111", 10 => "00111110001000000000100110001011", 11 => "10111100101111111001101001111111", 
    12 => "10111100111001110010111101110100", 13 => "10111011001001111100111110111101", 14 => "10111101000010111000001011011011", 15 => "10111110001000011100010110010000", 
    16 => "10111101101101000111101110100000", 17 => "10111101111001010010011001111011", 18 => "10111110000010011101011011100100", 19 => "10111110001000010111001011101111", 
    20 => "10111101110110001101000100101010", 21 => "10111101010001010100000110110011", 22 => "00111101100110101101101111111001", 23 => "00111101101110100011111001101000", 
    24 => "10111101100111110111011001111000", 25 => "10111100111111111011111000100110", 26 => "10111101000110010101101101000110", 27 => "00111101100101010010101100111100", 
    28 => "00111101100010001100011000011100", 29 => "10111101111011100001101011101110", 30 => "10111101100010110111001101101010", 31 => "10111101111000111011010110100101", 
    32 => "10111101111111101111010101110100", 33 => "10111110101101110110111101100111", 34 => "10111110001110010101011000101101", 35 => "10111110010110111011001111001000", 
    36 => "00111011110111011000111101011101", 37 => "00111101111010011100101110111001", 38 => "00111101101000000101001111011011", 39 => "10111101101000111000111000010101", 
    40 => "00111101110000011011100101001110", 41 => "00111101101110011110101011000000", 42 => "10111101110001110011011011010110", 43 => "10111110010110001101001011011000", 
    44 => "10111101100011000001011111001011", 45 => "10111101110101011010001011001010", 46 => "00111101110001101110011101001010", 47 => "10111110000011110101011011011101", 
    48 => "00111110010001110101100001100011", 49 => "10111110010001001110010100000110", 50 => "10111110000001011011111111101010", 51 => "10111101000011010111001100100000", 
    52 => "10111100011110010101011111011011", 53 => "10111101011010100011101111100011", 54 => "00111101101100010101000101101001", 55 => "10111100111111011001101000110101", 
    56 => "10111101111000110010110101101111", 57 => "10111101100010111001001001100010", 58 => "10111101000110010001011011100010", 59 => "00111100000001010101001100100100", 
    60 => "10111100011010011110000111010001", 61 => "00111011111011111110010011010001", 62 => "10111101110001101110000000110001", 63 => "10111101111010110000101011000000", 
    64 => "10111101010100011000011010101000", 65 => "10111101000001000111100100010100", 66 => "00111101100100111001100000100001", 67 => "00111110000001101111010101011001", 
    68 => "10111110001010111111111111111101", 69 => "10111101111100010010111111111011", 70 => "10111101101010001000001011010010", 71 => "00111110101000110001101000111110", 
    72 => "10111101111010110011110110000001", 73 => "10111011101001000100000001000000", 74 => "10111101111010111110010110100100", 75 => "00111101010001110101100110001001", 
    76 => "10111101010111010000111001100001", 77 => "00111101101110011110011001100000", 78 => "10111101110010000010010100101111", 79 => "10111101111001110011001110110110", 
    80 => "00111101110000101010110011101011", 81 => "10111101001011000010101010111001", 82 => "10111110011011101110100000010101", 83 => "00111100100101100110001001111101", 
    84 => "00111101001001000111000010101000", 85 => "10111100011111000110010111101101", 86 => "00111101011101010110101110010111", 87 => "10111110001010100101110011100110", 
    88 => "00111110001000001011010011000110", 89 => "10111101100111100110001011001100", 90 => "10111101000011000011100011001110", 91 => "10111101011000001110010101010000", 
    92 => "00111011110011110011010111000110", 93 => "10111011111111101100110011000000", 94 => "00111101000010101101001101011000", 95 => "10111100101101101001111001000010", 
    96 => "10111110001001100011010001001110", 97 => "00111100101000001100101000101010", 98 => "10111110001111111011111000101101", 99 => "10111110010011010100111001100111", 
    100 => "10111110000101101011100100111101", 101 => "10111101111000111001110101011110", 102 => "00111110001000110001100100010111", 103 => "00111011100111111010001111111011", 
    104 => "00111101101010111111011101111000", 105 => "00111101110011110101001100010111", 106 => "00111101110001110010001001101101", 107 => "10111101111010101111001110111100", 
    108 => "10111101100000000101001101111001", 109 => "10111110001000111111111111000000", 110 => "10111101110000011101111101000000", 111 => "00111101111110001001001110011101", 
    112 => "10111101111110010011100010001110", 113 => "00111101000001111101111111100011", 114 => "00111100110011010001111000110110", 115 => "00111101100110010001011000010001", 
    116 => "10111101110001011001111111110100", 117 => "00111011100011011001110101010111", 118 => "00111110000111001111001000111100", 119 => "10111101010111001111000110010110", 
    120 => "10111101110101001100000000001001", 121 => "00111101011110111011110111011100", 122 => "10111110001101111111110011010100", 123 => "00111101100010000110011011100111", 
    124 => "10111101010010000110100100110101", 125 => "10111101000100000110010110111001", 126 => "10111101000001110001001000001000", 127 => "00111100100100100001101101000110");



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

