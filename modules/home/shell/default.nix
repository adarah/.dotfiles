{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.adarah.shell;
in {
  options.adarah.shell = {
    enable = lib.mkEnableOption "Zsh + utilities";
  };

  config = lib.mkIf cfg.enable {
    home.sessionVariables = {
      KEYTIMEOUT = 1;
    };

    programs.zsh.enable = true;
    programs.zsh.enableCompletion = true;
    programs.zsh.autosuggestion.enable = true;
    programs.zsh.syntaxHighlighting.enable = true;
    programs.zsh.defaultKeymap = "viins";
    programs.zsh.shellAliases = {
      nixre = "darwin-rebuild switch --flake ~/.dotfiles";
      man = "batman";
    };
    programs.zsh.initExtra = ''
      # Enables backspace in insert mode
      bindkey -M viins '^?' backward-delete-char
    '';
    
    programs.starship.enable = true;
    programs.fzf.enable = true;
    programs.zoxide.enable = true;
    programs.atuin.enable = true;
    programs.bat.enable = true;
    programs.bat.extraPackages = with pkgs.bat-extras; [batdiff batman batgrep batwatch];
    programs.tealdeer.enable = true;
    programs.bottom.enable = true;
    programs.navi.enable = true;
    programs.ripgrep.enable = true;
    programs.jq.enable = true;
    programs.less.enable = true;
    programs.direnv.enable = true;
    programs.eza.enable = true;
  };
}
