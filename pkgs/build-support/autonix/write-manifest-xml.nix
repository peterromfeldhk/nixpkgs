{ stdenv, writeText, manifestWithNames }:

with stdenv.lib;

filename:
  let
    generateStores = mapAttrs (n: pkg: pkg.store);
    manifest =
      generateStores (manifestWithNames (import filename { mirror = ""; }));
  in
    writeText "manifest.xml" (builtins.toXML manifest)
