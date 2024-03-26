{
  lib,
  pkgs,
  inputs,
  ...
}: with lib.dots; {
  adarah= {
    dust = enabled;
    kitty = enabled;
    nixvim = enabled;
    shell = enabled;
    starship = enabled;
  };

  home.sessionPath = ["/opt/homebrew/bin"];

  home.username = "mag";
  home.homeDirectory = "/Users/mag";

  home.packages = [
    pkgs.nil # Nix LSP
    pkgs.fx # JSON terminal viewer
    pkgs.cachix # For devenv
  ];


  programs.git.enable = true;
  home.stateVersion = "24.05";
}
