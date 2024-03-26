{
  config,
  lib,
  ...
}: let
  cfg = config.adarah.starship;
in {
  options.adarah.starship = {
    enable = lib.mkEnableOption "starship";
  };

  config = lib.mkIf cfg.enable {
    programs.starship.enable = true;
    programs.fzf.enable = true;
  };
}
