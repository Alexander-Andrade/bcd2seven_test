library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity bcd2seven_behav is
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
end bcd2seven_behav;

architecture Behavioral of bcd2seven_behav is
   
begin
        process(notLT, notRBI,a, b, c, d, bi_rbo)
        begin
           A_out <= '0';
           B_out <= '0';
           C_out <= '0';
           D_out <= '0';
           E_out <= '0';
           F_out <= '0';
           G_out <= '0';
            if((bi_rbo = '1') and (a = '0') and (b = '0') and (c = '0') and (d = '0') and (notLT = '1') and (notRBI = '1')) then --0
                A_out <= '1';
                B_out <= '1';
                C_out <= '1';
                D_out <= '1';
                E_out <= '1';
                F_out <= '1';
                G_out <= '0';
            elsif((bi_rbo = '1') and (a = '1') and (b = '0') and (c = '0') and (d = '0') and (notLT = '1')) then  --1
                A_out <= '0';
                B_out <= '1';
                C_out <= '1';
                D_out <= '0';
                E_out <= '0';
                F_out <= '0';
                G_out <= '0';
            elsif((bi_rbo = '1') and (a = '0') and (b = '1') and (c = '0') and (d = '0') and (notLT = '1')) then --2
                A_out <= '1';
                B_out <= '1';
                C_out <= '0';
                D_out <= '1';
                E_out <= '1';
                F_out <= '0';
                G_out <= '1';
            elsif((bi_rbo = '1') and (a = '1') and (b = '1') and (c = '0') and (d = '0') and (notLT = '1')) then --3
                A_out <= '1';
                B_out <= '1';
                C_out <= '1';
                D_out <= '1';
                E_out <= '0';
                F_out <= '0';
                G_out <= '1';
            elsif((bi_rbo = '1') and (a = '0') and (b = '0') and (c = '1') and (d = '0') and (notLT = '1')) then --4
                A_out <= '0';
                B_out <= '1';
                C_out <= '1';
                D_out <= '0';
                E_out <= '0';
                F_out <= '1';
                G_out <= '1';
            elsif((bi_rbo = '1') and (a = '1') and (b = '0') and (c = '1') and (d = '0') and (notLT = '1')) then --5
                A_out <= '1';
                B_out <= '0';
                C_out <= '1';
                D_out <= '1';
                E_out <= '0';
                F_out <= '1';
                G_out <= '1';              
            elsif((bi_rbo = '1') and (a = '0') and (b = '1') and (c = '1') and (d = '0') and (notLT = '1')) then --6
                A_out <= '0';
                B_out <= '0';
                C_out <= '1';
                D_out <= '1';
                E_out <= '1';
                F_out <= '1';
                G_out <= '1';  
                elsif((bi_rbo = '1') and (a = '1') and (b = '1') and (c = '1') and (d = '0') and (notLT = '1')) then --7
                A_out <= '1';
                B_out <= '1';
                C_out <= '1';
                D_out <= '0';
                E_out <= '0';
                F_out <= '0';
                G_out <= '0'; 
            elsif((bi_rbo = '1') and (a = '0') and (b = '0') and (c = '0') and (d = '1') and (notLT = '1')) then --8
                A_out <= '1';
                B_out <= '1';
                C_out <= '1';
                D_out <= '1';
                E_out <= '1';
                F_out <= '1';
                G_out <= '1'; 
            elsif((bi_rbo = '1') and (a = '1') and (b = '0') and (c = '0') and (d = '1') and (notLT = '1')) then --9
                A_out <= '1';
                B_out <= '1';
                C_out <= '1';
                D_out <= '0';
                E_out <= '0';
                F_out <= '1';
                G_out <= '1'; 
            elsif((bi_rbo = '1') and (a = '0') and (b = '1') and (c = '0') and (d = '1') and (notLT = '1')) then --10
                A_out <= '0';
                B_out <= '0';
                C_out <= '0';
                D_out <= '1';
                E_out <= '1';
                F_out <= '0';
                G_out <= '1';
            elsif((bi_rbo = '1') and (a = '1') and (b = '1') and (c = '0') and (d = '1') and (notLT = '1')) then --11
                A_out <= '0';
                B_out <= '0';
                C_out <= '1';
                D_out <= '1';
                E_out <= '0';
                F_out <= '0';
                G_out <= '1';
             elsif((bi_rbo = '1') and (a = '0') and (b = '0') and (c = '1') and (d = '1') and (notLT = '1')) then --12
                A_out <= '0';
                B_out <= '1';
                C_out <= '0';
                D_out <= '0';
                E_out <= '0';
                F_out <= '1';
                G_out <= '1'; 
            elsif((bi_rbo = '1') and (a = '1') and (b = '0') and (c = '1') and (d = '1') and (notLT = '1')) then --13
              A_out <= '1';
              B_out <= '0';
              C_out <= '0';
              D_out <= '1';
              E_out <= '0';
              F_out <= '1';
              G_out <= '1'; 
           elsif((bi_rbo = '1') and (a = '0') and (b = '1') and (c = '1') and (d = '1') and (notLT = '1')) then --14
                 A_out <= '0';
                 B_out <= '0';
                 C_out <= '0';
                 D_out <= '1';
                 E_out <= '1';
                 F_out <= '1';
                 G_out <= '1'; 
           elsif((bi_rbo = '1') and (a = '1') and (b = '1') and (c = '1') and (d = '1') and (notLT = '1')) then --15
                A_out <= '0';
                B_out <= '0';
                C_out <= '0';
                D_out <= '0';
                E_out <= '0';
                F_out <= '0';
                G_out <= '0';
          elsif((bi_rbo = '0')) then --BI
                 A_out <= '0';
                 B_out <= '0';
                 C_out <= '0';
                 D_out <= '0';
                 E_out <= '0';
                 F_out <= '0';
                 G_out <= '0';       
              elsif((bi_rbo = '0') and (a = '0') and (b = '0') and (c = '0') and (d = '0') and (notLT = '1')) then --RBI
                 A_out <= '0';
                 B_out <= '0';
                 C_out <= '0';
                 D_out <= '0';
                 E_out <= '0';
                 F_out <= '0';
                 G_out <= '0'; 
              elsif((bi_rbo = '1') and (notLT = '0')) then --LT
                 A_out <= '1';
                 B_out <= '1';
                 C_out <= '1';
                 D_out <= '1';
                 E_out <= '1';
                 F_out <= '1';
                 G_out <= '1';                 
            end if;
    end process;
end Behavioral;
