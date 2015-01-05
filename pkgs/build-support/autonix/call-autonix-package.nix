{ stdenv }:

with stdenv.lib;

{ manifest
, dependencies
, srcs
, overrides
, resolve
, callPackage
, deriver
}:
dir: attrName: extra:
let
  pkg = getAttr attrName manifest;
  pkgOverrides = maybeAttr attrName {} overrides;
  pkgDeps = getAttr attrName dependencies;
  defaultDrvAttrs = {
    name = nameFromURL pkg.name ".tar";
    src = getAttr attrName srcs;
    buildInputs = resolve pkgDeps.buildInputs;
    nativeBuildInputs = resolve pkgDeps.nativeBuildInputs;
    propagatedBuildInputs = resolve pkgDeps.propagatedBuildInputs;
    propagatedNativeBuildInputs =
      resolve pkgDeps.propagatedNativeBuildInputs;
    propagatedUserEnvPkgs = resolve pkgDeps.propagatedUserEnvPkgs;
    enableParallelBuilding = true;
  };
  attrs = [ defaultDrvAttrs pkgOverrides ];
  exprPath = dir + ("/" + attrName + "/default.nix");
in
  if builtins.pathExists exprPath
    then (callPackage exprPath extra) attrs
  else deriver extra attrs
