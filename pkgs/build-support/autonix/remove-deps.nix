{ stdenv, isDepAttr }:

with stdenv.lib;

let
  removeDep = dep:
    mapAttrs (pkg: mapAttrs (n: if isDepAttr n then remove dep else id));
in
deps: pkgs: fold removeDep pkgs deps
