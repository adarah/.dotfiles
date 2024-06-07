{
  pkgs,
  lib,
  ...
}:
with (lib.dots); {
  adarah = {
    _1password = enabled;
  };
  programs.zsh.enable = true;

  system.stateVersion = "24.05";
}
