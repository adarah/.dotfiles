{
  mkShell,
  pkgs,
  ...
}:
mkShell {
  buildInputs = [pkgs.jq];
}
