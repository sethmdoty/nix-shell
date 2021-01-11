let
  pkgs = import <nixpkgs> { };
  mach-nix = import (builtins.fetchGit {
    url = "https://github.com/DavHau/mach-nix/";
    ref = "refs/tags/3.1.1";
  }) {
    # optionally bring your own nixpkgs
    pkgs = import <nixpkgs> { };
    # optionally specify the python version
    python = "python38";
  };
  customPython = mach-nix.mkPython {
    requirements = ''
      molecule
      molecule-vagrant
      python-vagrant
      pytest-testinfra
      pytest
    '';
  };
in pkgs.mkShell {
  buildInputs = [ customPython pkgs.python38Packages.ansible pkgs.vagrant ];
}
