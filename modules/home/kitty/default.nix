{
  config,
  inputs,
  lib,
  pkgs,
  stdenv,
  ...
}: let
  cfg = config.adarah.kitty;
in {
  options.adarah.kitty = {
    enable = lib.mkEnableOption "kitty";
  };

  config = lib.mkIf cfg.enable {
    programs.kitty.package = if stdenv.isDarwin then pkgs.kitty.overrideAttrs (o: {
      postInstall =
        (o.postInstall or "")
        + ''
          cp ${inputs.kitty-icon}/kitty-dark.icns $out/Applications/kitty.app/Contents/Resources/kitty.icns
        '';
    }) else null;
    programs.kitty.enable = true;
    programs.kitty.font.name = "MesloLGS Nerd Font Mono";
    programs.kitty.font.size = 14;
    programs.kitty.theme = "Catppuccin-Frappe";
  };
}
