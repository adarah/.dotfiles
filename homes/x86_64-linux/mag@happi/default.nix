{
  lib,
  pkgs,
  ...
}:
with (lib.dots); {

  adarah = {
    kitty = enabled;
    nixvim = enabled;
    shell = enabled;
    starship = enabled;
  };
  
  users.users.mag.shell = pkgs.zsh;

  home.file."~/.config/1Password/ssh/agent.toml".text = ''
      [[ssh-keys]]
      vault = "Homelab"
  '';

  programs.git.enable = true;
  home.stateVersion = "24.05";
}
