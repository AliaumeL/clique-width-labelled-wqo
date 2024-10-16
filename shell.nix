{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    name = "cwqo-shell";
    buildInputs = [ (import ./default.nix { inherit pkgs; }) ];
}
