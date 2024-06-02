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
  };

  home.sessionPath = ["/opt/homebrew/bin"];

  home.packages = [
    pkgs.nil # Nix LSP
    pkgs.fx # JSON terminal viewer
    pkgs.cachix # For devenv
  ];
  home.stateVersion = "24.05";
}
