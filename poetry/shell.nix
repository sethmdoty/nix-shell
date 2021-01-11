{ pkgs ? import <nixpkgs> { } }:

let myAppEnv = pkgs.poetry2nix.mkPoetryEnv { projectDir = ./.; };
in pkgs.mkShell { buildInputs = [ myAppEnv pkgs.poetry ]; }
