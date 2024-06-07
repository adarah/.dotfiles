{
  pkgs,
  lib,
  ...
}:
{
  imports = [ ./configuration.nix ];
  
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
  home-manager.backupFileExtension = "backup";

  system.stateVersion = "24.05";
}
