{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.adarah._1password;
in {
  options.adarah._1password = {
    enable = lib.mkEnableOption "_1password";
  };

  config = lib.mkIf cfg.enable {
    home = {
      packages = [pkgs._1password];
    };
  };
}
