 library ieee;
use ieee.std_logic_1164.all;
 
entity tgmux is
  port (
  
	autosetpin : in  std_logic;
    in_Select : in  std_logic;
    in_Data1  : in  std_logic;
    in_Data2  : in  std_logic;
	 reg_set_pulses   : out std_logic;
    out_Data   : out std_logic
    );
end entity tgmux;
 
architecture RTL of tgmux is

signal x : std_logic:= '0';
begin
process ( in_Select)
   begin
      -- if falling_edge(in_Select)  then 
		-- if falling_edge(autosetpin)  then 
		 --x <= not x;
		-- end if;
	  --if x = '1' then
-- out_Data <= in_Data2 ;
--else 
 --out_Data <= in_Data2;
-- end if;
 if in_Select = '0' then
 out_Data <= in_Data2 ; -- 1Hz
 else 
 out_Data <= in_Data1; --setpulses
 end if;
 
 
 
 
  	end process;
	
	--check for autoset condition
	process ( autosetpin)
   begin
	
	
	reg_set_pulses  <= autosetpin; --autosetpin directly sent to MC for MC reset
	
	

		
	
		end process;
	
	
end architecture RTL;