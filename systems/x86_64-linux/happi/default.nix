{
  pkgs,
  lib,
  ...
}:
{
  imports = [ ./hardware-configuration.nix ];

  system.stateVersion = "24.05";
}
