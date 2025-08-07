{
 inputs = {
   nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
   home-manager.url = "github:nix-community/home-manager";
   home-manager.inputs.nixpkgs.follows = "nixpkgs";
 };
 outputs = { self, nixpkgs, home-manager, ... }: {
   nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
    modules = [ 
    ./configuration.nix
    ./homeConfig.nix
    home-manager.nixosModules.home-manager
    ];
   };
 };
}
