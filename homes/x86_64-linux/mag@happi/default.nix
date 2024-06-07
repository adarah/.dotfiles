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
  
  home.file.".config/1Password/ssh/agent.toml".text = ''
      [[ssh-keys]]
      vault = "Homelab"
  '';
  
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
  };

  dconf.settings = {  
    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-type = "nothing";
    };
  };

  programs.git.enable = true;
  home.stateVersion = "24.05";
}
