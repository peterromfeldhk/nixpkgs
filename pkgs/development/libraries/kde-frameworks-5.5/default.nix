{ autonix, haskellPackages, pkgs, qt5, stdenv
, debug ? false }:

with stdenv.lib; with autonix;

let

  inherit (kf5.dev) callPackage;

  kf-package = callPackage ./kf-package { inherit debug; };

  manifest = manifestWithNames (import ./manifest.nix { mirror = "mirror://kde"; });

  dependencies = import ./dependencies.nix {};

  extraInputs = {
    inherit kf-package;
  };

  gst = pkgs.gst_all_1;

  extraOutputs = {
    inherit gst qt5;
    libdbusmenu_qt5 = pkgs.libdbusmenu_qt5.override { inherit qt5; };
    phonon_qt5 = pkgs.phonon_qt5.override { inherit qt5; };
    polkit_qt5 = pkgs.polkit_qt5.override { inherit qt5; };
    prison = callPackage ../prison/qt5.nix {};
  };

  names = with pkgs; with extraOutputs; {
    inherit avahi bison boost bzip2 cmake;
    dbusmenu-qt5 = libdbusmenu_qt5;
    inherit eigen2 enchant flex;
    gif = giflib;
    inherit glib grantlee;
    inherit (gst) gstreamer;
    inherit jasper;
    jpeg = libjpeg;
    inherit libgcrypt;
    liblzma = lzma;
    inherit openexpr openssl perl;
    phonon4qt5 = phonon_qt5;
    inherit pkgconfig;
    png = libpng;
    pythoninterp = python;
    inherit qca2 qimageblitz qt5;
    qt5core = qt5;
    qt5dbus = qt5;
    qt5gui = qt5;
    sharedmimeinfo = shared_mime_info;
    inherit sqlite strigi;
    xcb = xlibs.xcbproto;
    inherit zlib;
  };

  overrides = with pkgs; with kf5; {

    kauth = {
      buildInputs = [ polkit_qt5 ];
    };

    ki18n = {
      propagatedNativeBuildInputs = [ gettext python ];
    };

    kservice = {
      buildInputs = [ kwindowsystem ];
    };

  };

  kf5 = autonix.generateCollection ./. {
    inherit manifest dependencies extraInputs extraOutputs names overrides;
    deriver = kf-package;
  };
in kf5
