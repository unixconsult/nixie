library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 
 
entity nixie is 
    Port ( clk  : in  STD_LOGIC; 
			--clk2  : in  STD_LOGIC; 
        res  : in  STD_LOGIC; 
		   minsetpin  : in  STD_LOGIC; 
		  hoursetpin  : in  STD_LOGIC;
		  autosetpin : in  STD_LOGIC; -- button to autoset
		  --clkselect : in  STD_LOGIC; -- select between 2Hz and 1Hz from RTC
		  
	  
    
		  
		 autosetmosfet : out STD_LOGIC := '1'; -- pfet 
        anode1 : out STD_LOGIC;
		  anode2 : out STD_LOGIC;
		  anode3 : out STD_LOGIC;
		  anode4 : out STD_LOGIC;
		  dot1 : out STD_LOGIC;
		  dot2 : out STD_LOGIC;  
			request_set_time : out STD_LOGIC; -- pulse to MC to request time (to resetpin ESP) -pullup
		 out_Data   : out std_logic;
		 
		 
           leds : out STD_LOGIC_VECTOR(9 downto 0); 
        dsleds : out STD_LOGIC_VECTOR(5 downto 0); --decaseconds
        minleds : out STD_LOGIC_VECTOR(9 downto 0);
        dminleds : out STD_LOGIC_VECTOR(5 downto 0); --decaminutes
        hourleds : out STD_LOGIC_VECTOR(9 downto 0);
        dhourleds : out STD_LOGIC_VECTOR(2 downto 0)  --decahours
        );
end nixie; 
 
architecture Behavioral of nixie is 
signal ssec : integer range 0 to 9 := 0;
signal c : integer range 0 to 2 := 0; -- bei 2Hz 
signal t : std_logic := '0';
signal x : std_logic:= '0';
signal count_autosettime : integer range 0 to 12499999 := 0; --


--signal res : std_logic := '0';
signal dsec: integer range 0 to 5 := 0; 
signal min: integer range 0 to 9 := 0;
signal dmin: integer range 0 to 5 := 0;
signal hour: integer range 0 to 9 := 0;
signal dhour: integer range 0 to 2 := 0;

signal ssec2 : integer range 0 to 9 := 0;
signal dsec2: integer range 0 to 5 := 0; 
signal min2: integer range 0 to 9 := 0;
signal dmin2: integer range 0 to 5 := 0;
signal hour2: integer range 0 to 9 := 0;
signal dhour2: integer range 0 to 2 := 0;
 
  signal autosetflag : std_logic := '1';
--Port ( clk  : in  STD_LOGIC; 
  --         leds : out STD_LOGIC_VECTOR(7 downto 0));

--Das Hochzählen von Vektoren hat den Vorteil, 
--dass der Überlauf von 11111111bin = 255dez nach 00000000bin = 0dez 
--automatisch passiert.  
--dann im process:

--leds <= std_logic_vector(x);    -- Signal x an LEDs ausgeben 
--end Behavioral;



begin 
  process begin
    wait until falling_edge(clk);
	 
	 --switch the dots
	  --if (c<1 ) then        -- increment dot 
	-- if (c<1)  then         -- 0…24999999 = 25000000 Takte = 1/2 Sekunde bei 50MHz 
        --  c <= c+1;                -- wenn kleiner: weiterzählen 
			 
  
			 
			 
    -- else                         -- wenn Zählerende erreicht: 
          -- c <= 0;                  -- Zähler zurücksetzen 
         x <= not x;              -- und Signal x togglen 
    -- end if; 
		
	

  --normal operation	
	 if (minsetpin = '1' ) and (hoursetpin = '1' ) then  --pullups on, switch to GND
    if (ssec<9) then ssec <= ssec+1;
    else             ssec <= 0; --overflow single seconds, count decaseconds
      if (dsec<5) then dsec <= dsec+1;
      else             dsec <= 0;
        if (min<9) then min <= min+1;
        else             min <= 0;
          if (dmin<5) then dmin <= dmin+1;
          else             dmin <= 0;
            if (hour<9) then hour <= hour+1;
            else              hour <= 0;
              if (dhour<2) then dhour <= dhour+1;
              else              dhour <= 0;
              end if;-- dhour
            end if;-- hour
          end if;-- dmin
			end if;-- min
		end if;--dsec
	  end if; --ssec
	  end if; --if minsetpin		
				 
				 
				
				if x = '1' then
				dot1 <= '0'; 
				 dot2  <= '1';  
         else
              
				 dot1 <= '1';
				 dot2 <= '0';
				 
        end if; --if x = '1'
      -- end if; 
	  
	  
	  
	 
	
	
	  
	  
	  --set minutes
	  if (minsetpin = '0' ) and (hoursetpin = '1' ) then --pullups on, switch to GND
	  
        if (min<9) then min <= min+1;
        else             min <= 0;
          if (dmin<5) then dmin <= dmin+1;
          else             dmin <= 0;
            if (hour<9) then hour <= hour+1;
            else              hour <= 0;
              if (dhour<2) then dhour <= dhour+1;
              else              dhour <= 0;
              end if;-- dhour
            end if;-- hour
          end if;-- dmin
			end if;-- min
		 
	  end if; --if minsetpin
	  
	   --set hours
	  if (minsetpin = '1' ) and (hoursetpin = '0' ) then --pullups on, switch to GND
            if (hour<9) then hour <= hour+1;
            else              hour <= 0;
              if (dhour<2) then dhour <= dhour+1;
              else              dhour <= 0;
              end if;-- dhour
            end if;-- hour
           
	  end if; --if minsetpin
	  
	  
    
	 
	  if (dhour=2) and (hour=4) then --24h overflow
	   ssec <= 0;
      dsec <= 0;
		min <= 0;
		dmin <= 0;
		hour <= 0;
		dhour <= 0;
		
      end if;
    
    if ( res = '0')  then  --reset condition
      ssec <= 0;
      dsec <= 0;
		min <= 0;
		dmin <= 0;
		hour <= 0;
		dhour <= 0;
		
      end if;
		
		

		
	 
	 
    leds <= "0000000000";
    leds(ssec) <= '1';
    
    dsleds <= "000000";  --decaseconds
    dsleds(dsec) <= '1';
    
    minleds <= "0000000000";
    minleds(min)<='1';
    
    
    dminleds <= "000000";
    dminleds(dmin)<='1';
    
    hourleds <= "0000000000";
    hourleds(hour)<='1';
    
    dhourleds <= "000";
    dhourleds(dhour)<='1';
	 
	  anode1 <= '1'; --optocouplers
    anode2 <= '1';
	 anode3 <= '1'; --optocouplers
    anode4 <= '1';
	 
	 if (dhour=0) then
	 anode4 <= '0';
	 end if;
	 
	 if autosetpin = '0' then
	 
	 anode1 <= '0';
    anode2 <= '0'; 
    --anode3 <= '0';
		--anode4 <= '0';	
	 end if;
	
   end process;
	
	--check for autoset condition
	process ( autosetpin)
   begin
	
	
	request_set_time  <= autosetpin; --autosetpin directly sent to MC
	
	
--else 
 --out_Data <= in_Data2;
-- end if;
		
	
		end process;
	
	
	
	 
	 	
	
 
	 
	
 
end Behavioral;