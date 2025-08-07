{ config, pkgs, ...}:
{
 nix.settings.experimental-features = ["nix-command" "flakes"];
 home-manager.users.natalie = {
	home.stateVersion = "25.05";
	programs.bash.enable = true;
	programs.neovim.enable = true;
	programs.neovim.defaultEditor = true;
        home.packages = [ pkgs.gcc pkgs.nodejs_24 pkgs.unzip ];
 };
}
	

