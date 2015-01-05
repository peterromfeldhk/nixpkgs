{ stdenv, fetchurl, newScope, callAutonixPackage }:

with stdenv.lib;

let
  # Do not allow any package to depend on itself.
  breakRecursion = mapAttrs (name: mapAttrs (depType: filter (x: x != name)));

  generateSources =
    mapAttrs (n: pkg: fetchurl { inherit (pkg) sha256 name url; });

  oneList = x: if builtins.isList x then x else [x];

  # Resolve inputs, turning a list of dependency names into a list of
  # derivations. 'collection' is the set of packages in the current collection,
  # 'extra' is the set of extra inputs, and 'names' is a set of name->dependency
  # mappings. Names are resolved first from 'names', then from 'extra' and
  # finally from 'collection'.
  resolveInputs = collection: extra: names: inputs:
    let resolveInOrder = input: oneList
          (names."${input}" or extra."${input}" or collection."${input}" or []);
    in concatMap resolveInOrder inputs;
in
dir:

{
  # 'names' maps dependency strings to derivations. It is a set of the form:
  # {
  #   <dependency name> = <derivation>
  # }
  # '<derivation>' may also be a list of derivations.
  names
  # 'manifest' lists the packages in the collection, their source and hash
  # information. It is a set of the form:
  # {
  #   <package name> = {
  #     url = <src url>;
  #     sha256 = <hash>;
  #     name = <basename of src>;
  #     store = <store path of downloaded src>;
  #   };
  #   ...
  # }
  # The package name is determined from the (sanitized) source name. A script
  # ./manifest.sh usually generates a file ./manifest.nix which can be imported
  # with 'importManifest' to produce this set.
, manifest
  # dependencies is a set of the form:
  # {
  #   <package attr name> = {
  #     buildInputs = [ <list of strings> ];
  #     nativeBuildInputs = [ <list of strings> ];
  #     propagatedBuildInputs = [ <list of strings> ];
  #     propagatedNativeBuildInputs = [ <list of strings> ];
  #     propagatedUserEnvPkgs = [ <list of strings> ];
  #   };
  #   ...
  # }
  # Each list of strings will be translated into dependencies using the
  # names argument. Every list must be present for each package, even if
  # it is just the empty list.
, dependencies
  # extraInputs are attributes in the default scope (through callPackage) to
  # the expressions in the collection. They are not included in the final
  # set.
, extraInputs ? {}
  # extraOutputs are extra attributes to include in the final set of the
  # collection. They are also used as extraInputs, so there is no need to
  # list packages twice.
, extraOutputs ? {}
  # deriver is a function of two arguments. The first argument is an
  # attribute set of the form passed to stdenv.mkDerivation; these are the
  # default derivation attributes. The second argument is a list of attribute
  # sets which should be merged to produce additional arguments for the
  # derivation. The first arguments should override the merge arguments.
, deriver ? mkDerivation
  # overrides is a set of extra attributes passed to the deriver for each
  # package, i.e., it is a set of the form:
  # {
  #    <package name> = { <extra attributes> };
  # }
  # The extra attributes can be any extra attributes for the deriver, such
  # as buildInputs, cmakeFlags, etc. They will be merged with attributes from
  # other sources.
, overrides ? {}
}:
let dependenciesOrig = dependencies;
    dev = {
      inherit names;
      manifest = manifestXML manifest;
    };
in
let extraIn = extraOutputs // extraInputs // {
      inherit callPackage;
      mkDerivation = deriver;
      dev = dev // { inherit callPackage; };
    };
    extraOut = extraOutputs // {
      dev = dev // {
        inherit callPackage;
        mkDerivation = deriver;
        callAutonixPackage = callAutonixPackage callAutonixAttrs;
      };
    };
    callPackage = newScope (collection // extraIn);
    callAutonixAttrs = {
      inherit manifest overrides callPackage deriver;
      dependencies = breakRecursion dependenciesOrig;
      srcs = generateSources manifest;
      resolve = resolveInputs collection extraIn names;
    };
    collection =
      mapAttrs (n: p: callAutonixPackage callAutonixAttrs dir n {}) manifest;
in collection // extraOut
