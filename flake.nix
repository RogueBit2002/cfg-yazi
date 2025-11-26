{
	description = "Home-Manager configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
	};
	
	outputs = { nixpkgs, home-manager, ... } @ inputs: let
		system = "x86_64-linux";
		pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
	in {
		homeManagerModules = {
			default = {
				programs.yazi = {
					enable = true;
					enableBashIntegration = true; # Should probably move/abstract this
				};
			};
		};
	};
}
