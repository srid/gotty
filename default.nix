# This file was generated by https://github.com/kamilchm/go2nix v1.3.0
{ stdenv, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "gotty-srid-${version}";
  version = "2017-12-13";
  rev = "a080c85cbc59226c94c6941ad8c395232d72d517";

  goPackagePath = "github.com/yudai/gotty";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/srid/gotty.git";
    sha256 = "1vhhs7d4k1vpkf2k69ai2r3bp3zwnwa8l9q7vza0rck69g4nmz7a";
  };

  goDeps = ./deps.nix;

  # TODO: add metadata https://nixos.org/nixpkgs/manual/#sec-standard-meta-attributes
  meta = {
  };
}
