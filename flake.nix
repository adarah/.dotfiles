{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    snowfall-lib = {
      url = "github:snowfallorg/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    kitty-icon.url = "github:DinkDonk/kitty-icon";
    kitty-icon.flake = false;
  };

  outputs = inputs:
    inputs.snowfall-lib.mkFlake {
      inherit inputs;

      src = ./.;

      channels-config = {
        allowUnfree = true;
      };
      # alias = {
      #   shells = {
      #   default = "default";
      #   };
      # };

      # snowfall = {
      #   namespace = "adarah";
      #   meta = {
      #     name = ".dotfiles";
      #     title = ".dotfiles";
      #   };
      # };
      # snowfallorg.users.mag.home = (import ./modules/darwin.myhome);

      formatter.aarch64-darwin = inputs.nixpkgs.legacyPackages.aarch64-darwin.alejandra;
    };
}
