{ stdenv, writeText, importManifest }:

with stdenv.lib;

filename:
  let
    generateStores = mapAttrs (n: pkg: pkg.store);
    manifest =
      generateStores (importManifest filename { mirror = ""; });
  in
    writeText "manifest.xml" (builtins.toXML manifest)
