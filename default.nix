{ pkgs ? import <nixpkgs> {} }:
pkgs.buildEnv {
  name = "polyregular-model-checking";
  paths = [
    # pytest
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pytest
      python-pkgs.pytikz-allefeld
    ]))
  ];
}

