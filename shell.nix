{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShellNoCC {
  preferLocalBuild = true;
  allowSubstitutes = false;

  name = "mathlib4-devenv";

  packages = with pkgs; [
    elan
  ];
}
