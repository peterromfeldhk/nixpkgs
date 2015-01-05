{ callPackage, fetchurl, haskellPackages, newScope, runCommand, stdenv, writeText }:

with stdenv.lib;

let
  traceThis = x: builtins.trace x x;
  pkgNameVersion = pkg: nameFromURL pkg.name ".tar";
  pkgAttrName = pkg: (builtins.parseDrvName (pkgNameVersion pkg)).name;
  pkgVersion = pkg: (builtins.parseDrvName (pkgNameVersion pkg)).version;

  manifestWithNames = manifest:
    builtins.listToAttrs (map (p: nameValuePair (pkgAttrName p) p) manifest);

  generateSources =
    mapAttrs (n: pkg: fetchurl { inherit (pkg) sha256 name url; });

  oneList = x: if builtins.isList x then x else [x];

  resolveInputs = collection: extra: names: inputs:
    concatMap
      (input: oneList (
        if names ? "${input}"
          then names."${input}"
        else if extra ? "${input}"
          then extra."${input}"
        else if collection ? "${input}"
          then collection."${input}"
        else []
      ))
      inputs;

  mkDerivation = args: attrs:
    stdenv.mkDerivation (mergeAttrsByFuncDefaultsClean (attrs ++ [args]));

  unique =
    let go = xs: x: xs ++ optional (!(elem x xs)) x;
    in foldl go [];

  uniqueNames = manifest:
    unique (map pkgAttrName manifest);

  versionsOf = manifest: name:
    filter (pkg: pkgAttrName pkg == name) manifest;

  bestVersion = versions:
    let
      strictLess = a: b:
        builtins.compareVersions (pkgVersion a) (pkgVersion b) > 0;
      sorted = sort strictLess versions;
    in head sorted;

  filterManifest = manifest:
    map (name: bestVersion (versionsOf manifest name)) (uniqueNames manifest);

  # sane defaults (same name as attr name so that inherit can be used)
  mergeAttrBy = # { buildInputs = concatList; [...]; passthru = mergeAttr; [..]; }
    listToAttrs (map (n : nameValuePair n concat)
      # Lists to concat
      [ "nativeBuildInputs"
        "buildInputs"
        "propagatedBuildInputs"
        "propagatedNativeBuildInputs"
        "cmakeFlags"
        "configureFlags"
        "prePhases"
        "postAll"
        "patches"
      ])
    // listToAttrs (map (n : nameValuePair n mergeAttrs)
      # Attribute sets to merge
      [ "passthru"
        "meta"
        "cfg"
        "flags"
      ])
    // listToAttrs (map (n : nameValuePair n (a: b: "${a}\n${b}"))
      # Strings to concat, separated by a newline
      [ "preConfigure"
        "postInstall"
      ]);

  mergeAttrsByFuncDefaults = foldl mergeAttrByFunc { inherit mergeAttrBy; };
  mergeAttrsByFuncDefaultsClean = list: removeAttrs (mergeAttrsByFuncDefaults list) ["mergeAttrBy"];

  callAutonixPackage =
    { manifest
    , dependencies
    , srcs
    , overrides
    , resolve
    , callPackage
    , deriver
    }: dir: attrName: extra:
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
      drv =
        let attrs = [ defaultDrvAttrs pkgOverrides ];
            exprPath = dir + ("/" + attrName + "/default.nix");
        in if builtins.pathExists exprPath
          then (callPackage exprPath extra) attrs
        else deriver extra attrs;
    in drv;

in
{
  inherit pkgNameVersion pkgAttrName packagesOnly deps;
  inherit manifestWithNames generateSources resolveInputs manifestXML;
  inherit filterManifest mergeAttrsBy mergeAttrsByFuncDefaults;
  inherit mergeAttrsByFuncDefaultsClean callAutonixPackage;

  writeManifestXML = callPackage ./write-manifest-xml.nix {
    inherit manifestWithNames;
  };

  removeDependencies = callPackage ./remove-dependencies.nix {};

  emptyDeps = {
    buildInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
    propagatedNativeBuildInputs = [];
    propagatedUserEnvPkgs = [];
  };

  generateCollection = callPackage ./generate-collection.nix {};
}
