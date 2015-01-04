{ stdenv, cmake, pkgconfig }:

attrs:

let
  inherit (stdenv.lib) mergeAttrsByFuncDefaultsClean;
  defArgs = mergeAttrsByFuncDefaultsClean attrs;
in
stdenv.mkDerivation {
  inherit (defArgs) name src;
  propagatedNativeBuildInputs = [ cmake pkgconfig ];
  enableParallelBuilding = true;
  cmakeFlags = [ "-DBUILD_TESTING=OFF" ];
  patches = [
    ./0001-libdir-default.patch
    ./0002-qt5-plugin-dir.patch
  ];
  meta = {
    license = with stdenv.lib.licenses; [ bsd2 ];
    platforms = stdenv.lib.platforms.linux;
    maintainers = with stdenv.lib.maintainers; [ ttuegel ];
    homepage = "http://www.kde.org";
  };
}
