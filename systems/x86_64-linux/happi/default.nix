{
  pkgs,
  lib,
  ...
}:
{
  imports = [ ./configuration.nix ];

  system.stateVersion = "24.05";
}
