library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity full_enum_test is
end full_enum_test;

architecture Behavioral of full_enum_test is
    
    COMPONENT bcd2seven_behav
        Port ( 
                notLT: in std_logic;
                notRBI: in std_logic;
                a: in std_logic;
                b: in std_logic;
                c: in std_logic;
                d: in std_logic;
                bi_rbo: in std_logic;
                A_out: out std_logic;
                B_out: out std_logic;
                C_out: out std_logic;
                D_out: out std_logic;
                E_out: out std_logic;
                F_out: out std_logic;
                G_out: out std_logic);
    end COMPONENT;
    
    COMPONENT bcd2seven_dflow
        Port ( 
                notLT: in std_logic;
                notRBI: in std_logic;
                a: in std_logic;
                b: in std_logic;
                c: in std_logic;
                d: in std_logic;
                bi_rbo: in std_logic;
                A_out: out std_logic;
                B_out: out std_logic;
                C_out: out std_logic;
                D_out: out std_logic;
                E_out: out std_logic;
                F_out: out std_logic;
                G_out: out std_logic);
    end COMPONENT;
    signal in_vec : std_logic_vector(6 downto 0);
    signal out_vec1 : std_logic_vector(6 downto 0);
    signal out_vec2 : std_logic_vector(6 downto 0);
    
   begin
       
       UUT1: bcd2seven_behav port map (notLT => in_vec(0), notRBI => in_vec(1), a => in_vec(2), b => in_vec(3), c => in_vec(4), d => in_vec(5), bi_rbo => in_vec(6),A_out => out_vec1(0), B_out => out_vec1(1), C_out => out_vec1(2), D_out => out_vec1(3), E_out => out_vec1(4), F_out => out_vec1(5), G_out => out_vec1(6));
       UUT2: bcd2seven_dflow port map (notLT => in_vec(0), notRBI => in_vec(1), a => in_vec(2), b => in_vec(3), c => in_vec(4), d => in_vec(5), bi_rbo => in_vec(6),A_out => out_vec2(0), B_out => out_vec2(1), C_out => out_vec2(2), D_out => out_vec2(3), E_out => out_vec2(4), F_out => out_vec2(5), G_out => out_vec2(6));
           
       process
           begin
               for i in 0 to 127 loop
                      in_vec <= std_logic_vector(to_unsigned(i, in_vec'length));
                      wait for 5 ns;
               end loop;
       end process;
end Behavioral;