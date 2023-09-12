{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  packages = with pkgs; [ nix-prefetch-github (import ./default.nix {}).m8c-stable ];
  inputsFrom = [ (import ./default.nix {}).m8c-dev ];
}
