{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.hugo
                  pkgs.git
                ];
  shellHook = ''
    hugo version
  '';
}
