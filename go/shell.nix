with import <nixpkgs> { };

stdenv.mkDerivation {
  name = "go";
  buildInputs = [
    go_1_14
  ];
  shellHook = "";
}
