library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd2seven_dflow is
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
end bcd2seven_dflow;

architecture Behavioral of bcd2seven_dflow is

begin
        A_out <= (bi_rbo and (not a) and (not b) and (not c) and (not d) and notLT and notRBI) or 
                 (bi_rbo and (not a) and b and (not c) and (not d) and notLT) or
                 (bi_rbo and a and b and (not c) and (not d) and notLT) or
                 (bi_rbo and a and (not b) and c and (not d) and notLT) or 
                 (bi_rbo and a and b and c and (not d) and notLT) or
                 (bi_rbo and (not a) and (not b) and (not c) and d and notLT) or 
                 (bi_rbo and a and (not b) and (not c) and d and notLT) or
                 (bi_rbo and a and (not b) and c and d and notLT) or
                 (bi_rbo and (not notLT));
        B_out <= (bi_rbo and (not a) and (not b) and (not c) and (not d) and notLT and notRBI) or 
                 (bi_rbo and a and (not b) and (not c) and (not d) and notLT) or
                 (bi_rbo and (not a) and b and (not c) and (not d) and notLT) or
                 (bi_rbo and a and b and (not c) and (not d) and notLT) or
                 (bi_rbo and (not a) and (not b) and c and (not d) and notLT) or
                 (bi_rbo and a and b and c and (not d) and notLT) or
                 (bi_rbo and (not a) and (not b) and (not c) and d and notLT) or 
                 (bi_rbo and a and (not b) and (not c) and d and notLT) or 
                 (bi_rbo and (not a) and (not b) and c and d and notLT) or 
                 (bi_rbo and (not notLT));
        C_out <= (bi_rbo and (not a) and (not b) and (not c) and (not d) and notLT and notRBI) or 
                 (bi_rbo and a and (not b) and (not c) and (not d) and notLT) or
                 (bi_rbo and a and b and (not c) and (not d) and notLT) or
                 (bi_rbo and (not a) and (not b) and c and (not d) and notLT) or
                 (bi_rbo and a and (not b) and c and (not d) and notLT) or
                 (bi_rbo and (not a) and b and c and (not d) and notLT) or
                 (bi_rbo and a and b and c and (not d) and notLT) or
                 (bi_rbo and (not a) and (not b) and (not c) and d and notLT) or
                 (bi_rbo and a and (not b) and (not c) and d and notLT) or
                 (bi_rbo and a and b and (not c) and d and notLT) or
                 (bi_rbo and (not notLT));
        D_out <= (bi_rbo and (not a) and (not b) and (not c) and (not d) and notLT and notRBI) or 
                 (bi_rbo and (not a) and b and (not c) and (not d) and notLT) or
                 (bi_rbo and a and b and (not c) and (not d) and notLT) or
                 (bi_rbo and a and (not b) and c and (not d) and notLT) or
                 (bi_rbo and (not a) and b and c and (not d) and notLT) or
                 (bi_rbo and (not a) and (not b) and (not c) and d and notLT) or
                 (bi_rbo and (not a) and b and (not c) and d and notLT) or 
                 (bi_rbo and a and b and (not c) and d and notLT) or    
                 (bi_rbo and a and (not b) and c and d and notLT) or
                 (bi_rbo and (not a) and b and c and d and notLT) or
                 (bi_rbo and (not notLT));
        E_out <= (bi_rbo and (not a) and (not b) and (not c) and (not d) and notLT and notRBI) or 
                 (bi_rbo and (not a) and b and (not c) and (not d) and notLT) or
                 (bi_rbo and (not a) and b and c and (not d) and notLT) or 
                 (bi_rbo and (not a) and (not b) and (not c) and d and notLT) or 
                 (bi_rbo and (not a) and b and (not c) and d and notLT) or 
                 (bi_rbo and (not a) and b and c and d and notLT) or 
                 (bi_rbo and (not notLT));
        F_out <= (bi_rbo and (not a) and (not b) and (not c) and (not d) and notLT and notRBI) or
                 (bi_rbo and (not a) and (not b) and c and (not d) and notLT) or
                 (bi_rbo and a and (not b) and c and (not d) and notLT) or
                 (bi_rbo and (not a) and b and c and (not d) and notLT) or 
                 (bi_rbo and (not a) and (not b) and (not c) and d and notLT) or
                 (bi_rbo and (not a) and (not b) and c and d and notLT) or 
                 (bi_rbo and a and (not b) and c and d and notLT) or  
                 (bi_rbo and (not a) and b and c and d and notLT) or  
                 (bi_rbo and a and b and c and d and notLT) or
                 (bi_rbo and (not notLT));
        G_out <= (bi_rbo and (not a) and b and (not c) and (not d) and notLT) or
                 (bi_rbo and a and b and (not c) and (not d) and notLT ) or
                 (bi_rbo and (not a) and (not b) and c and (not d) and notLT ) or
                 (bi_rbo and a and (not b) and c and (not d) and notLT) or
                 (bi_rbo and (not a) and b and c and (not d) and notLT) or
                 (bi_rbo and (not a) and (not b) and (not c) and d and notLT) or
                 (bi_rbo and a and (not b) and (not c) and d and notLT) or
                 (bi_rbo and (not a) and b and (not c) and d and notLT) or
                 (bi_rbo and a and b and (not c) and d and notLT) or
                 (bi_rbo and (not a) and (not b) and c and d and notLT) or
                 (bi_rbo and a and (not b) and c and d and notLT) or
                 (bi_rbo and (not a) and b and c and d and notLT) or
                 (bi_rbo and (not notLT));
end Behavioral;



































--       bi_rbo <= ((not a) and (not b) and (not c) and (not d) and notLT and notRBI) or
--                 ((a) and (not b) and (not c) and (not d) and notLT) or
--                 ((not a) and (b) and (not c) and (not d) and notLT) or
--                 ((a) and (b) and (not c) and (not d) and notLT) or
--                 ((not a) and (not b) and (c) and (not d) and notLT) or
--                 ((a) and (not b) and (c) and (not d) and notLT) or
--                 ((not a) and (b) and (c) and (not d) and notLT) or
--                 ((a) and (b) and (c) and (not d) and notLT) or                
--                 ((not a) and (not b) and (not c) and (d) and notLT) or
--                 ((a) and (not b) and (not c) and (d) and notLT) or
--                 ((not a) and (b) and (not c) and (d) and notLT) or
--                 ((a) and (b) and (not c) and (d) and notLT) or
--                 ((not a) and (not b) and (c) and (d) and notLT) or
--                 ((a) and (not b) and (c) and (d) and notLT) or
--                 ((not a) and (b) and (c) and (d) and notLT) or
--                 ((a) and (b) and (c) and (d) and notLT) or
--                 (not notLT);