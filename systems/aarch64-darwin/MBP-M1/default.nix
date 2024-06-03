{
  pkgs,
  lib,
  ...
}:
with (lib.dots); {
  adarah = {
    httpie = enabled;
    _1password = enabled;
  };

  users.users.mag.home = "/Users/mag";

  fonts.fontDir.enable = true;
  fonts.fonts = [(pkgs.nerdfonts.override {fonts = ["Meslo"];})];

  system.defaults.NSGlobalDomain.InitialKeyRepeat = 15;
  # Makes the keyboard repeat faster
  system.defaults.NSGlobalDomain.KeyRepeat = 2;
  system.defaults.dock.autohide = true;
  # Makes switching spaces faster
  # system.defaults.universalaccess.reduceMotion = true;
  # Recommended by Amethyst docs
  system.defaults.dock.mru-spaces = false;
  # TODO: Once https://github.com/LnL7/nix-darwin/pull/699 is merged, I can define shortcuts in my config
  # Until then, I'll just document them here. Modified via System Preferences > Keyboard > Shortcuts > Mission Control
  # option-shift-(1 through 9): Open workspace (1 through 9)
  # option-shift-0: Open workspace 10

  homebrew.enable = true;
  homebrew.brews = [
    "saml2aws"
  ];
  homebrew.casks = [
    "amethyst"
    "arc"
    "raycast"
  ];
  programs.zsh.enable = true;

  system.stateVersion = 4;
}
