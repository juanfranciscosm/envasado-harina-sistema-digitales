	component HOST_COM is
		port (
			probe  : in  std_logic_vector(24 downto 0) := (others => 'X'); -- probe
			source : out std_logic_vector(16 downto 0)                     -- source
		);
	end component HOST_COM;

	u0 : component HOST_COM
		port map (
			probe  => CONNECTED_TO_probe,  --  probes.probe
			source => CONNECTED_TO_source  -- sources.source
		);

