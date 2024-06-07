{
  lib,
  pkgs,
  ...
}:
with lib.dots; {
  adarah = {
    kitty = enabled;
    nixvim = enabled;
    shell = enabled;
    starship = enabled;
  };

  # home.packages = [
  #   pkgs.nil # Nix LSP
  #   pkgs.cachix # For devenv
  # ];

  programs.git.enable = true;
  home.stateVersion = "24.05";
}
