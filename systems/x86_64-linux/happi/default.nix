{
  pkgs,
  lib,
  ...
}:
{
  imports = [ ./configuration.nix ];

  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
  home-manager.backupFileExtension = "backup";

  system.stateVersion = "24.05";
}
