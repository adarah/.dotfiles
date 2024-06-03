{
  lib,
  pkgs,
  inputs,
  ...
}:
with lib.dots; {
  adarah = {
    dust = enabled;
    kitty = enabled;
    nixvim = enabled;
    shell = enabled;
    starship = enabled;
    devenv = enabled;
  };

  # For things installed via brew WITHOUT nix-darwin 
  home.sessionPath = ["/opt/homebrew/bin"];

  home.packages = [
    pkgs.nil # Nix LSP
    pkgs.fx # JSON terminal viewer
    pkgs.cachix # For devenv
  ];

  programs.git.enable = true;
  home.stateVersion = "24.05";
}
