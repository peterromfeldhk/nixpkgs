{ stdenv
, lib
, config
, fetchurl
, unzip
, makeWrapper
, icu
, libunwind
, curl
, zlib
, libuuid
, dotnetbuildhelpers
, dotnetCorePackages
, coreclr
, openssl
}:

stdenv.mkDerivation rec {
  pname = "azure-functions-core-tools";
  version = "4.0.4483";

  src = fetchurl {
    url = "https://github.com/Azure/${pname}/releases/download/${version}/Azure.Functions.Cli.linux-x64.${version}.zip";
    sha256 = "0l1v36qv29cy5h4s1gkrq7867gfjnw3qfxxdifndkf8ndhl3b3wq";
  };

  buildInputs = [
    unzip
    makeWrapper
    dotnetbuildhelpers
  ];

  nativeBuildInputs = [
    icu
    libunwind
    curl
    zlib
    dotnetCorePackages.sdk_3_1
  ];

  libPath = lib.makeLibraryPath [
    libunwind
    libuuid
    stdenv.cc.cc
    curl
    zlib
    icu
    openssl
  ];

  unpackPhase = ''
    unzip $src
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp -prd *.dll *.so gozip func $out/bin
    patchelf \
      --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      --set-rpath "${libPath}" "$out/bin/func"
    chmod +x $out/bin/func $out/bin/gozip
    find $out/bin -type f -name "*.so" -exec patchelf --set-rpath "${libPath}" {} \;
    wrapProgram "$out/bin/func" --prefix LD_LIBRARY_PATH : ${libPath}
  '';

  doCheck = false;
  checkPhase = ":";

  dontStrip = true; # Causes rpath patching to break if not set

  meta = with lib; {
    homepage = "https://github.com/Azure/azure-functions-core-tools";
    description = "Command line tools for Azure Functions";
    license = licenses.mit;
    maintainers = with maintainers; [ peterromfeldhk ];
    platforms = platforms.linux;
  };
}
