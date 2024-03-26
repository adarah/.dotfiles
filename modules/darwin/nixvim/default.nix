{
  lib,
  config,
  inputs,
  ...
}: let
  cfg = config.adarah.nixvim;
in
  with (lib.dots); {
    imports = [inputs.nixvim.nixDarwinModules.nixvim];

    options.adarah.nixvim = {
      enable = lib.mkEnableOption "nixvim";
    };

    config = lib.mkIf cfg.enable {
      programs.nixvim = {
        enable = true;
        viAlias = true;
        vimAlias = true;
        clipboard.register = "unnamedplus";
        colorschemes.gruvbox.enable = true;
        plugins = {
          lightline = enabled;
          surround = enabled;
          autoclose = enabled;
        };

        options = {
          number = true;
          relativenumber = true;
          shiftwidth = 2;
        };
      };
    };
  }
