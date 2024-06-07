{
  config,
  lib,
  ...
}: let
  cfg = config.adarah._1password-gui;
in {
  options.adarah._1password = {
    enable = lib.mkEnableOption "_1password-gui";
  };

  config = lib.mkIf cfg.enable {
    homebrew.casks = ["1password"];
  };
}
