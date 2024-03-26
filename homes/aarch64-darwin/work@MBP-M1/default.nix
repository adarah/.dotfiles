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

  home.username = "work";
  home.homeDirectory = "/Users/work";
  home.stateVersion = "24.05";
}
