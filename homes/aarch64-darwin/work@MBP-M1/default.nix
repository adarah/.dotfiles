{
  pkgs,
  inputs,
  ...
}: {
  adarah.dust.enable = true;
  adarah.starship.enable = true;

  home.username = "work";
  home.homeDirectory = "/Users/work";
  home.stateVersion = "24.05";
}
