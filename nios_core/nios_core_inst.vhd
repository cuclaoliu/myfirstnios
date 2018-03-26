	component nios_core is
		port (
			clk_clk       : in  std_logic                     := 'X';             -- clk
			reset_reset_n : in  std_logic                     := 'X';             -- reset_n
			ledg_export   : out std_logic_vector(7 downto 0);                     -- export
			ledr_export   : out std_logic_vector(15 downto 0);                    -- export
			key_export    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			sw_export     : in  std_logic_vector(15 downto 0) := (others => 'X')  -- export
		);
	end component nios_core;

	u0 : component nios_core
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			ledg_export   => CONNECTED_TO_ledg_export,   --  ledg.export
			ledr_export   => CONNECTED_TO_ledr_export,   --  ledr.export
			key_export    => CONNECTED_TO_key_export,    --   key.export
			sw_export     => CONNECTED_TO_sw_export      --    sw.export
		);

