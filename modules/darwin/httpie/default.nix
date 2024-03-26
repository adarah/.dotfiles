{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.adarah.httpie;
in {
  options.adarah.httpie = {
    enable = lib.mkEnableOption "httpie";
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = [pkgs.httpie];
  };
}
