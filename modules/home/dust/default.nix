{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.adarah.dust;
in {
  options.adarah.dust = {
    enable = lib.mkEnableOption "dust";
  };

  config = lib.mkIf cfg.enable {
    home = {
      packages = [pkgs.dust];
    };
  };
}
