{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.adarah.devenv;
in {
  options.adarah.devenv = {
    enable = lib.mkEnableOption "devenv";
  };

  config = lib.mkIf cfg.enable {
    home = {
      packages = [pkgs.devenv];
    };
  };
}
