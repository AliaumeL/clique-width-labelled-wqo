{ pkgs ? import <nixpkgs> {} }:
pkgs.buildEnv {
  name = "clique-width-wqo";
  paths = [
    # pytest
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pytest
      python-pkgs.pytikz-allefeld
    ]))
  ];
}

