{
  pkgs,
  inputs,
  ...
}: {
  adarah.dust.enable = true;
  adarah.starship.enable = true;

  home.sessionPath = ["/opt/homebrew/bin"];
  
  home.username = "mag";
  home.homeDirectory = "/Users/mag";

  home.sessionVariables = {
    EDITOR = "nvim";
    # Fixes the annoying delay when pressing escape in zsh
    KEYTIMEOUT = 1;
  };

  home.packages = [
    pkgs.nil # Nix LSP
    pkgs.fx # JSON terminal viewer
    pkgs.cachix # For devenv
  ];

  programs.zsh.enable = true;
  programs.zsh.enableCompletion = true;
  programs.zsh.autosuggestion.enable = true;
  programs.zsh.syntaxHighlighting.enable = true;
  programs.zsh.defaultKeymap = "viins";
  programs.zsh.shellAliases = {
    nixre = "darwin-rebuild switch --flake ~/dotfiles";
    man = "batman";
  };
  programs.zsh.initExtra = ''
    # Enables backspace in insert mode
    bindkey -M viins '^?' backward-delete-char
  '';

  programs.kitty.package = pkgs.kitty.overrideAttrs (o: {
    postInstall =
      (o.postInstall or "")
      + ''
        cp ${inputs.kitty-icon}/kitty-dark.icns $out/Applications/kitty.app/Contents/Resources/kitty.icns
      '';
  });
  programs.kitty.enable = true;
  programs.kitty.font.name = "MesloLGS Nerd Font Mono";
  programs.kitty.font.size = 14;
  programs.kitty.theme = "Catppuccin-Frappe";

  programs.zoxide.enable = true;

  programs.tealdeer.enable = true;

  programs.atuin.enable = true;

  programs.bat.enable = true;
  programs.bat.extraPackages = with pkgs.bat-extras; [batdiff batman batgrep batwatch];

  programs.bottom.enable = true;

  programs.direnv.enable = true;

  programs.eza.enable = true;

  programs.fzf.enable = true;

  programs.git.enable = true;

  programs.jq.enable = true;

  programs.less.enable = true;

  programs.navi.enable = true;

  # programs.neovim.enable = true;

  programs.ripgrep.enable = true;

  home.stateVersion = "24.05";
}
