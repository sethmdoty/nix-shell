 { pkgs ? import <nixpkgs> { } }:
 pkgs.mkShell {
   nativeBuildInputs =
     [ pkgs.terraform pkgs.python38 pkgs.python38Packages.boto3 ];
 }
