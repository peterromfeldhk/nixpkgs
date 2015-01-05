{ stdenv }:

with stdenv.lib;

let
  depAttrNames = [
    "buildInputs" "nativeBuildInputs"
    "propagatedBuildInputs" "propagatedNativeBuildInputs"
    "propagatedUserEnvPkgs"
  ];
  isDepAttr = name: builtins.elem name depAttrNames;
  go = dep:
    mapAttrs (pkg: mapAttrs (n: if isDepAttr n then remove dep else id));
in
  fold go
