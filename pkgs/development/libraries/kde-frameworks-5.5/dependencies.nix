# DO NOT EDIT! This file is generated automatically.
{ }:
{
  attica = {
    buildInputs = [ "qt5" "qt5widgets" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  extra-cmake-modules = {
    buildInputs = [ "agg" "blitz" "bluez" "eigen2" "enchant" "ffmpeg" "flac" "flex" "gobject" "gstreamer" "lcms" "libart" "libxslt" "openexr" "pcre" "qca2" "qimageblitz" "qt5core" "qt5linguisttools" "sqlite" "strigi" "usb" "xine" "xmms" ];
    nativeBuildInputs = [ "cmake" "qcollectiongenerator_executable" "sphinx_executable" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [  ];
    propagatedUserEnvPkgs = [  ];
  };

  frameworkintegration = {
    buildInputs = [ "kconfig" "kconfigwidgets" "kiconthemes" "kio" "knotifications" "kwidgetsaddons" "oxygenfont" "qt5" "qt5test" "xcb" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kconfigwidgets" "kiconthemes" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kactivities = {
    buildInputs = [ "boost" "kcmutils" "kconfig" "kcoreaddons" "kdbusaddons" "kdeclarative" "kf5" "kglobalaccel" "kio" "kservice" "kwindowsystem" "kxmlgui" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kapidox = {
    buildInputs = [ "pythoninterp" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [  ];
    propagatedUserEnvPkgs = [  ];
  };

  karchive = {
    buildInputs = [ "bzip2" "karchive" "liblzma" "qt5core" "qt5test" "zlib" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kauth = {
    buildInputs = [ "kcoreaddons" "qt5" "qt5test" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kcoreaddons" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kbookmarks = {
    buildInputs = [ "kconfigwidgets" "kcoreaddons" "kiconthemes" "kwidgetsaddons" "kxmlgui" "qt5" "qt5test" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kconfigwidgets" "kiconthemes" "kxmlgui" "qt5widgets" "qt5xml" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kcmutils = {
    buildInputs = [ "kconfigwidgets" "kcoreaddons" "kiconthemes" "kitemviews" "kservice" "kxmlgui" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kconfigwidgets" "kiconthemes" "kitemviews" "kservice" "kxmlgui" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kcodecs = {
    buildInputs = [ "qt5core" "qt5test" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kcompletion = {
    buildInputs = [ "kconfig" "kwidgetsaddons" "qt5" "qt5test" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kconfig" "kwidgetsaddons" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kconfig = {
    buildInputs = [ "qt5" "qt5concurrent" "qt5core" "qt5gui" "qt5test" "qt5xml" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5xml" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kconfigwidgets = {
    buildInputs = [ "kauth" "kcodecs" "kconfig" "kcoreaddons" "kguiaddons" "kwidgetsaddons" "qt5" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kauth" "kcodecs" "kconfig" "kguiaddons" "kwidgetsaddons" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  kcoreaddons = {
    buildInputs = [ "fam" "qt5" "qt5test" "qt5widgets" "sharedmimeinfo" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kcrash = {
    buildInputs = [ "kcoreaddons" "kwindowsystem" "qt5" "qt5test" "qt5widgets" "qt5x11extras" "x11" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kcoreaddons" "kwindowsystem" "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdbusaddons = {
    buildInputs = [ "qt5dbus" "qt5test" "qt5x11extras" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5dbus" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdeclarative = {
    buildInputs = [ "kconfig" "kf5" "kglobalaccel" "kguiaddons" "kiconthemes" "kio" "kwidgetsaddons" "kwindowsystem" "qt5" "qt5test" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kio" "qt5qml" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kded = {
    buildInputs = [ "kconfig" "kcoreaddons" "kcrash" "kdbusaddons" "kinit" "kservice" "qt5" ];
    nativeBuildInputs = [ "cmake" "kdoctools" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdelibs4support = {
    buildInputs = [ "agg" "blitz" "bluez" "docbookxml4" "eigen2" "enchant" "ffmpeg" "flac" "gobject" "gstreamer" "kcompletion" "kconfig" "kconfigwidgets" "kcrash" "kdesignerplugin" "kdewin" "kglobalaccel" "kguiaddons" "kiconthemes" "kio" "knotifications" "kparts" "kservice" "ktextwidgets" "kunitconversion" "kwidgetsaddons" "kwindowsystem" "kxmlgui" "lcms" "libart" "networkmanager" "openexr" "openssl" "pcre" "qca2" "qimageblitz" "qntrack" "qt5" "qt5x11extras" "sqlite" "usb" "x11" "xine" "xmms" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kauth" "kconfigwidgets" "kcoreaddons" "kcrash" "kdelibs4support" "kdesignerplugin" "kdewin" "kemoticons" "kguiaddons" "kiconthemes" "kinit" "kitemmodels" "knotifications" "kparts" "ktextwidgets" "kunitconversion" "kwindowsystem" "qt5dbus" "qt5printsupport" "qt5xml" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "kdoctools" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdesignerplugin = {
    buildInputs = [ "kcompletion" "kconfig" "kconfigwidgets" "kcoreaddons" "kdewebkit" "kiconthemes" "kio" "kitemviews" "kplotting" "ktextwidgets" "kwidgetsaddons" "kxmlgui" "qt5core" "qt5designer" "qt5test" "qt5widgets" "sonnet" ];
    nativeBuildInputs = [ "cmake" "kdoctools" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdesu = {
    buildInputs = [ "kcoreaddons" "kpty" "kservice" "qt5core" "x11" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kpty" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdewebkit = {
    buildInputs = [ "kconfig" "kcoreaddons" "kio" "kjobwidgets" "kparts" "kservice" "kwallet" "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5webkitwidgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdnssd = {
    buildInputs = [ "avahi" "dnssd" "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5network" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdoctools = {
    buildInputs = [ "docbookxml4" "docbookxsl" "karchive" "libxml2" "libxslt" "qt5core" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "karchive" "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kemoticons = {
    buildInputs = [ "karchive" "kconfig" "kcoreaddons" "kservice" "qt5" "qt5test" "qt5xml" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "karchive" "kservice" "qt5gui" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kglobalaccel = {
    buildInputs = [ "qt5" "x11" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5dbus" "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kguiaddons = {
    buildInputs = [ "qt5" "qt5gui" "qt5x11extras" "x11" "xcb" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5gui" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  khtml = {
    buildInputs = [ "gif" "jpeg" "karchive" "kcodecs" "kdewin" "kglobalaccel" "kiconthemes" "kio" "kjs" "knotifications" "kparts" "ktextwidgets" "kwallet" "kwidgetsaddons" "kwindowsystem" "kxmlgui" "openssl" "perl" "phonon4qt5" "png" "qt5" "qt5test" "qt5x11extras" "sonnet" "x11" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "karchive" "kbookmarks" "kglobalaccel" "kiconthemes" "kio" "kjs" "knotifications" "kparts" "kwallet" "kwidgetsaddons" "kwindowsystem" "qt5core" "sonnet" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  ki18n = {
    buildInputs = [ "libintl" "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kiconthemes = {
    buildInputs = [ "kconfigwidgets" "kitemviews" "kwidgetsaddons" "qt5" "qt5dbus" "qt5svg" "qt5widgets" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kconfigwidgets" "kitemviews" "kwidgetsaddons" "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  kidletime = {
    buildInputs = [ "qt5" "x11" "x11_xcb" "xcb" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kimageformats = {
    buildInputs = [ "jasper" "openexr" "qt5gui" "qt5printsupport" "qt5test" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kinit = {
    buildInputs = [ "kconfig" "kcrash" "kio" "kservice" "kwindowsystem" "libcap" "qt5" "x11" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kio = {
    buildInputs = [ "acl" "gssapi" "karchive" "kbookmarks" "kcodecs" "kcompletion" "kconfig" "kconfigwidgets" "kcoreaddons" "kdbusaddons" "kiconthemes" "kitemviews" "kjobwidgets" "knotifications" "kservice" "kwallet" "kwidgetsaddons" "kwindowsystem" "kxmlgui" "libxml2" "libxslt" "openssl" "qt5" "qt5concurrent" "qt5core" "qt5script" "qt5test" "qt5widgets" "solid" "strigi" "x11" "zlib" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kbookmarks" "kcompletion" "kitemviews" "kjobwidgets" "kservice" "kxmlgui" "qt5network" "solid" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kitemmodels = {
    buildInputs = [ "grantlee" "qt5" "qt5core" "qt5script" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kitemviews = {
    buildInputs = [ "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kjobwidgets = {
    buildInputs = [ "kcoreaddons" "kwidgetsaddons" "qt5" "qt5x11extras" "x11" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kcoreaddons" "kwidgetsaddons" "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kjs = {
    buildInputs = [ "pcre" "perl" "qt5core" "qt5test" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kjsembed = {
    buildInputs = [ "kjs" "qt5" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kjs" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  kmediaplayer = {
    buildInputs = [ "kparts" "kxmlgui" "qt5dbus" "qt5test" "qt5widgets" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kparts" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  knewstuff = {
    buildInputs = [ "attica" "karchive" "kcompletion" "kconfig" "kcoreaddons" "kiconthemes" "kio" "kitemviews" "ktextwidgets" "kwidgetsaddons" "kxmlgui" "qt5" "qt5test" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "attica" "karchive" "kio" "kxmlgui" "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  knotifications = {
    buildInputs = [ "dbusmenu-qt5" "kcodecs" "kconfig" "kcoreaddons" "kiconthemes" "kservice" "kwindowsystem" "phonon4qt5" "qt5" "qt5x11extras" "x11" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "kwindowsystem" "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  knotifyconfig = {
    buildInputs = [ "kcompletion" "kconfig" "kconfigwidgets" "kio" "knotifications" "kservice" "kwidgetsaddons" "kxmlgui" "phonon4qt5" "qt5" "qt5test" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kio" "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  kparts = {
    buildInputs = [ "kconfig" "kcoreaddons" "kiconthemes" "kio" "kjobwidgets" "knotifications" "kservice" "ktextwidgets" "kwidgetsaddons" "kxmlgui" "qt5" "qt5test" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kio" "knotifications" "ktextwidgets" "kxmlgui" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kplotting = {
    buildInputs = [ "qt5" "qt5widgets" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kpty = {
    buildInputs = [ "kcoreaddons" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kcoreaddons" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  kross = {
    buildInputs = [ "kcompletion" "kcoreaddons" "kiconthemes" "kio" "kparts" "kservice" "kwidgetsaddons" "kxmlgui" "qt5" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kiconthemes" "kio" "kparts" "kwidgetsaddons" "qt5script" "qt5widgets" "qt5xml" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  krunner = {
    buildInputs = [ "kconfig" "kcoreaddons" "kio" "kservice" "plasma-framework" "qt5" "solid" "threadweaver" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "plasma-framework" "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kservice = {
    buildInputs = [ "kconfig" "kcoreaddons" "kcrash" "kdbusaddons" "qt5" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kconfig" "kcoreaddons" "kdbusaddons" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  ktexteditor = {
    buildInputs = [ "karchive" "kconfig" "kguiaddons" "kio" "kparts" "libgit2" "perl" "qt5" "sonnet" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  ktextwidgets = {
    buildInputs = [ "kcompletion" "kconfig" "kconfigwidgets" "kiconthemes" "kservice" "kwidgetsaddons" "kwindowsystem" "qt5" "sonnet" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kcompletion" "kconfigwidgets" "kiconthemes" "kservice" "kwindowsystem" "qt5widgets" "sonnet" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  kunitconversion = {
    buildInputs = [ "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kconfig" "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" "ki18n" ];
    propagatedUserEnvPkgs = [  ];
  };

  kwallet = {
    buildInputs = [ "gpgme" "kconfig" "kcoreaddons" "kdbusaddons" "kf5gpgmepp" "kiconthemes" "knotifications" "kservice" "kwidgetsaddons" "kwindowsystem" "libgcrypt" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kconfig" "kwindowsystem" "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kwidgetsaddons = {
    buildInputs = [ "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kwindowsystem = {
    buildInputs = [ "qt5" "qt5winextras" "x11" "xcb" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5widgets" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kxmlgui = {
    buildInputs = [ "attica" "kconfig" "kconfigwidgets" "kglobalaccel" "kiconthemes" "kitemviews" "ktextwidgets" "kwidgetsaddons" "kwindowsystem" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "attica" "kconfig" "kconfigwidgets" "kglobalaccel" "kiconthemes" "kitemviews" "ktextwidgets" "kwindowsystem" "qt5dbus" "qt5xml" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  plasma-framework = {
    buildInputs = [ "egl" "gpgme" "kactivities" "karchive" "kauth" "kbookmarks" "kcodecs" "kcompletion" "kconfig" "kconfigwidgets" "kcoreaddons" "kcrash" "kdbusaddons" "kde4support" "kdeclarative" "kdelibs4support" "kdepimlibs" "kdesu" "kf5" "kf5karchive" "kf5kauth" "kf5kbookmarks" "kf5kcodecs" "kf5kcompletion" "kf5kconfig" "kf5kconfigwidgets" "kf5kcoreaddons" "kf5kcrash" "kf5kdbusaddons" "kf5kdeclarative" "kf5kdesu" "kf5kdoctools" "kf5kf5globalaccel" "kf5kguiaddons" "kf5ki18n" "kf5kiconthemes" "kf5kidletime" "kf5kinit" "kf5kjobwidgets" "kf5kjs" "kf5knotifications" "kf5kparts" "kf5kservice" "kf5ktextwidgets" "kf5kunitconversion" "kf5kwallet" "kf5kwidgetsaddons" "kf5kwindowsystem" "kf5no_module" "kglobalaccel" "kguiaddons" "kiconthemes" "kidletime" "kinit" "kio" "kitemmodels" "kitemviews" "kjobwidgets" "kjs" "knotifications" "kparts" "kross" "kservice" "ktextwidgets" "kunitconversion" "kwallet" "kwidgetsaddons" "kwindowsystem" "kxmlgui" "opengl" "qca2" "qt5" "qt5test" "qt5widgets" "solid" "sonnet" "threadweaver" "x11" "xcb" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" "sh" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  solid = {
    buildInputs = [ "bison" "flex" "iokit" "mediaplayerinfo" "qt5" "qt5qml" "udev" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  sonnet = {
    buildInputs = [ "aspell" "enchant" "hspell" "hunspell" "qt5" "qt5test" "zlib" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  threadweaver = {
    buildInputs = [ "qt5" "qt5core" "qt5test" "qt5widgets" "threadweaver" ];
    nativeBuildInputs = [ "cmake" "snippetextractor" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

}
