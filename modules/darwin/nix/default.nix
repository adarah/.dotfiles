{...}: {
  config = {

    nix.useDaemon = true;
    nix.extraOptions = ''
      extra-experimental-features = nix-command flakes
    '';
    nix.settings.trusted-users = [
      "mag"
    ];
    nix.settings.substituters = [
      "https://nix-community.cachix.org"
      "https://devenv.cachix.org"
    ];
    nix.settings.trusted-substituters = [
      "https://nix-community.cachix.org"
      "https://devenv.cachix.org"
    ];
    nix.settings.trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
    ];
  };
}
