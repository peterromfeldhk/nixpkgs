{ stdenv, fetchurl, zlib, ncurses, p7zip, lib, makeWrapper
, coreutils, file, findutils, gawk, gnugrep, gnused, jdk, which
, platformTools
}:

stdenv.mkDerivation rec {
  /*name = "android-ndk-r15c";

  src = if stdenv.system == "x86_64-linux" then fetchurl {
      url = "https://dl.google.com/android/repository/${name}-linux-x86_64.zip";
      sha256 = "0g5ssb0s5k78vncsas5h9s86k0x1cs9vj9v7lfa65grkcya8h5zh";
    }
    else if stdenv.system == "x86_64-darwin" then fetchurl {
      url = "https://dl.google.com/android/repository/${name}-darwin-x86_64.zip";
      sha256 = "0pz5f2y216gby1l0xjn6wkmwr0z6rjiglccxxxgncs3nw8qyjv44";
    }
    else throw "platform ${stdenv.system} not supported!";*/

  name = "android-ndk-r10e";

  src = if stdenv.system == "i686-linux"
    then fetchurl {
      url = "http://dl.google.com/android/ndk/${name}-linux-x86.bin";
      sha256 = "1xbxra5v3bm6cmxyx8yyya5r93jh5m064aibgwd396xdm8jpvc4j";
    }
    else if stdenv.system == "x86_64-linux" then fetchurl {
      url = "http://dl.google.com/android/ndk/${name}-linux-x86_64.bin";
      sha256 = "0nhxixd0mq4ib176ya0hclnlbmhm8f2lab6i611kiwbzyqinfb8h";
    }
    else if stdenv.system == "i686-darwin" then fetchurl {
      url = "http://dl.google.com/android/ndk/${name}-darwin-x86.bin";
      sha256 = "0kh8bmfcwq7lf6xiwlacwx7wf2mqg7ax7jaq28gi0qvgc2g3133j";
    }
    else if stdenv.system == "x86_64-darwin" then fetchurl {
      url = "http://dl.google.com/android/ndk/${name}-darwin-x86_64.bin";
      sha256 = "0kh8bmfcwq7lf6xiwlacwx7wf2mqg7ax7jaq28gi0qvgc2g3133j";
    }
    else throw "platform ${stdenv.system} not supported!";

  phases = "buildPhase";

  buildInputs = [ p7zip makeWrapper ];

  buildCommand = let
    bin_path = "$out/bin";
    pkg_path = "$out/libexec/${name}";
    sed_script_1 =
      "'s|^PROGDIR=`dirname $0`" +
      "|PROGDIR=`dirname $(readlink -f $(which $0))`|'";
    sed_script_2 =
      "'s|^MYNDKDIR=`dirname $0`" +
      "|MYNDKDIR=`dirname $(readlink -f $(which $0))`|'";
    runtime_paths = (lib.makeBinPath [
      coreutils file findutils
      gawk gnugrep gnused
      jdk
      which
    ]) + ":${platformTools}/platform-tools";
  in ''
    set -x
    mkdir -pv $out/libexec
    cd $out/libexec
    7z x $src

    # so that it doesn't fail because of read-only permissions set
    cd -
    patch -p1 \
        --no-backup-if-mismatch \
        -d $out/libexec/${name} < ${ ./make-standalone-toolchain.patch }
    cd ${pkg_path}

    find $out \( \
        \( -type f -a -name "*.so*" \) -o \
        \( -type f -a -perm -0100 \) \
        \) -exec patchelf --set-interpreter ${stdenv.cc.libc.out}/lib/ld-*so.? \
                          --set-rpath ${stdenv.lib.makeLibraryPath [ zlib.out ncurses ]} {} \;
    # fix ineffective PROGDIR / MYNDKDIR determination
    for i in ndk-build ndk-gdb ndk-gdb-py
    do
        sed -i -e ${sed_script_1} $i
    done
    sed -i -e ${sed_script_2} ndk-which
    # a bash script
    patchShebangs ndk-which
    # wrap
    for i in ndk-build ndk-gdb ndk-gdb-py ndk-which
    do
        wrapProgram "$(pwd)/$i" --prefix PATH : "${runtime_paths}"
    done
    # make some executables available in PATH
    mkdir -pv ${bin_path}
    for i in \
        ndk-build ndk-depends ndk-gdb ndk-gdb-py ndk-gdb.py ndk-stack ndk-which
    do
        ln -sf ${pkg_path}/$i ${bin_path}/$i
    done
  '';

    meta = with stdenv.lib; {
        platforms = with platforms; linux ++ darwin;
        hydraPlatforms = [];
    };
}
