{
  config,
  lib,
  ...
}: let
  cfg = config.adarah._1password;
in {
  options.adarah._1password = {
    enable = lib.mkEnableOption "1Password";
  };

  config = lib.mkIf cfg.enable {
    homebrew.casks = ["1password"];
  };
}
