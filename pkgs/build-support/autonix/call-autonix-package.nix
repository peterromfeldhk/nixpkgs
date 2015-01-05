{ stdenv }:

with stdenv.lib;

{ packages
, overrides
, callPackage
, deriver
}:
dir: attrName: extra:
let
  defaultAttrs = packages."${attrName}";
  attrs =
    [ defaultAttrs ]
    ++ optional (hasAttr attrName overrides) overrides."${attrName}";
  exprPath = dir + ("/" + attrName + "/default.nix");
in
  if builtins.pathExists exprPath
    then (callPackage exprPath extra) attrs
  else deriver extra attrs
