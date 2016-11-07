library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use STD.textio.ALL;
use IEEE.std_logic_textio.ALL;

entity etalon_test is
end etalon_test;

architecture Behavioral of etalon_test is
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
    
    file fetalon : text;
    
    signal in_vec : std_logic_vector(6 downto 0) := (others=> '0');
    signal out_vec_behav : std_logic_vector(6 downto 0) := (others=> '0');
    signal out_vec_dflow : std_logic_vector(6 downto 0) := (others=> '0');
begin
    
     UUT1: bcd2seven_behav port map (notLT => in_vec(0), notRBI => in_vec(1), a => in_vec(2), b => in_vec(3), c => in_vec(4), d => in_vec(5), bi_rbo => in_vec(6),A_out => out_vec_behav(0), B_out => out_vec_behav(1), C_out => out_vec_behav(2), D_out => out_vec_behav(3), E_out => out_vec_behav(4), F_out => out_vec_behav(5), G_out => out_vec_behav(6));
     UUT2: bcd2seven_dflow port map (notLT => in_vec(0), notRBI => in_vec(1), a => in_vec(2), b => in_vec(3), c => in_vec(4), d => in_vec(5), bi_rbo => in_vec(6),A_out => out_vec_dflow(0), B_out => out_vec_dflow(1), C_out => out_vec_dflow(2), D_out => out_vec_dflow(3), E_out => out_vec_dflow(4), F_out => out_vec_dflow(5), G_out => out_vec_dflow(6));
       

    process
       variable in_vec_line : line;
       variable out_vec_line : line;
       
       variable in_vec_etalon : std_logic_vector(in_vec'length-1 downto 0) := (others=> '0');
       variable out_vec_etalon : std_logic_vector(in_vec'length-1 downto 0) := (others=> '0');
    begin
       file_open(fetalon, "../../../etalon.txt", read_mode);
       
       while not endfile(fetalon) loop
        readline(fetalon, in_vec_line);
        readline(fetalon, out_vec_line);
        -- Pass the variable to a signal
        read(in_vec_line, in_vec_etalon);
        read(out_vec_line, out_vec_etalon);
        in_vec <= in_vec_etalon;
        wait for 5 ns;
        assert out_vec_behav = out_vec_etalon
        report "bcd2seven_behav fails" severity error;
        
        assert out_vec_dflow = out_vec_etalon
        report "bcd2seven_dflow fails" severity error;
       end loop;
       
       file_close(fetalon);
       wait; --repeat only one time
    end process;

end Behavioral;
