# DO NOT EDIT! This file is generated automatically.
{ }:
{
  baloo = {
    buildInputs = [ "kauth" "kcmutils" "kconfig" "kcrash" "kdelibs4support" "kf5" "kf5abc" "kf5akonadi" "kf5akonadimime" "kf5akonadiserver" "kf5calendarcore" "kf5mime" "kf5pimutils" "kfilemetadata" "kidletime" "kio" "qt5" "qt5test" "solid" "xapian" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "kcoreaddons" "kfilemetadata" "qt5core" "xapian" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  breeze = {
    buildInputs = [ "frameworkintegration" "kcompletion" "kconfig" "kconfigwidgets" "kcoreaddons" "kde4" "kf5" "kwin" "kwindowsystem" "pkgconfig" "qt5" "xcb" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kde-cli-tools = {
    buildInputs = [ "kcmutils" "kconfig" "kdelibs4support" "kdesu" "kf5" "kiconthemes" "kwindowsystem" "qt5" "qt5test" "qt5x11extras" "x11" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kdeplasma-addons = {
    buildInputs = [ "gio" "glib2" "gobject" "ibus" "kcmutils" "kconfig" "kconfigwidgets" "kcoreaddons" "kde4" "kdelibs4support" "kdepimlibs" "kexiv2" "kf5" "kio" "krunner" "kservice" "kunitconversion" "lancelot" "lancelot-datamodels" "plasma-framework" "qt5" "scim" "sharedmimeinfo" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kfilemetadata = {
    buildInputs = [ "epub" "exiv2" "ffmpeg" "karchive" "kf5" "popplerqt5" "qmobipocket" "qt5" "taglib" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  khelpcenter = {
    buildInputs = [ "kcmutils" "kconfig" "kdelibs4support" "kf5" "khtml" "kinit" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  khotkeys = {
    buildInputs = [ "kcmutils" "kdbusaddons" "kdelibs4support" "kf5" "kglobalaccel" "kio" "kxmlgui" "plasma-framework" "plasma-workspace" "qt5" "x11" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kinfocenter = {
    buildInputs = [ "egl" "kcmutils" "kcompletion" "kconfig" "kconfigwidgets" "kcoreaddons" "kdbusaddons" "kdelibs4support" "kf5" "kiconthemes" "kio" "kservice" "kwayland" "kwidgetsaddons" "kxmlgui" "opengl" "opengles" "pciutils" "qt5" "raw1394" "solid" "x11" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kio-extras = {
    buildInputs = [ "exiv2" "jpeg" "karchive" "kconfig" "kconfigwidgets" "kcoreaddons" "kdbusaddons" "kdelibs4support" "kdnssd" "kf5" "khtml" "kiconthemes" "kio" "libssh" "openexr" "phonon4qt5" "qt5" "qt5test" "samba" "sharedmimeinfo" "slp" "solid" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" "md5sum_executable" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kmenuedit = {
    buildInputs = [ "kdbusaddons" "kdelibs4support" "kf5" "khotkeys" "kiconthemes" "kio" "kxmlgui" "qt5" "sonnet" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  ksysguard = {
    buildInputs = [ "kconfig" "kcoreaddons" "kdelibs4support" "kf5" "kiconthemes" "kitemviews" "knewstuff" "libksysguard" "qt5" "sensors" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kwayland = {
    buildInputs = [ "qt5" "wayland" ];
    nativeBuildInputs = [ "cmake" "wayland_scanner_executable" ];
    propagatedBuildInputs = [ "qt5gui" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kwin = {
    buildInputs = [ "egl" "epoxy" "kactivities" "kcmutils" "kcompletion" "kconfig" "kconfigwidgets" "kcoreaddons" "kcrash" "kdeclarative" "kf5" "kglobalaccel" "kinit" "kio" "knewstuff" "knotifications" "kservice" "kwayland" "kwidgetsaddons" "kwindowsystem" "kxmlgui" "opengl" "opengles" "plasma-framework" "qt5" "qt5multimedia" "qt5test" "wayland" "x11" "xcb" "xkb" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kconfig" "kservice" "kwindowsystem" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  kwrited = {
    buildInputs = [ "kdbusaddons" "kdelibs4support" "kf5" "kpty" "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  libkscreen = {
    buildInputs = [ "doxygen" "qt5" "x11" "xcb" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  libksysguard = {
    buildInputs = [ "kconfig" "kdelibs4support" "kf5" "plasma-framework" "qt5" "qt5x11extras" "x11" "zlib" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [ "qt5dbus" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  libmm-qt = {
    buildInputs = [ "libmm-qt" "modemmanager" "qt4" "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  libnm-qt = {
    buildInputs = [ "libnm-qt" "networkmanager" "qt4" "qt5" ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [ "qt5core" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  milou = {
    buildInputs = [ "kdeclarative" "kdepimlibs" "kf5" "krunner" "plasma-framework" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  oxygen = {
    buildInputs = [ "frameworkintegration" "kcompletion" "kconfig" "kde4" "kde4workspace" "kf5" "kguiaddons" "kservice" "kwidgetsaddons" "kwin" "kwindowsystem" "pkgconfig" "qt5" "xcb" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  oxygen-fonts = {
    buildInputs = [  ];
    nativeBuildInputs = [ "cmake" "fontforge_executable" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  plasma-desktop = {
    buildInputs = [ "attica" "fontconfig" "freetype" "glib2" "kactivities" "kauth" "kcmutils" "kde4" "kdelibs4support" "kemoticons" "kf5" "kitemmodels" "knewstuff" "knotifyconfig" "krunner" "kwallet" "kwin" "opengl" "opengles" "packagekitqt5" "phonon4qt5" "plasma-framework" "plasma-workspace" "pulseaudio" "qt4" "qt5" "strigi" "usb" "x11" "xcb" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  plasma-nm = {
    buildInputs = [ "kcompletion" "kconfigwidgets" "kcoreaddons" "kdbusaddons" "kdeclarative" "kdelibs4support" "kf5" "kiconthemes" "kinit" "kio" "kitemviews" "knotifications" "kservice" "kwallet" "kwidgetsaddons" "kwindowsystem" "kxmlgui" "libmm-qt" "libnm-qt" "mobilebroadbandproviderinfo" "modemmanager" "networkmanager" "openconnect" "openssl" "plasma-framework" "qt5" "solid" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  plasma-workspace = {
    buildInputs = [ "baloo" "dbusmenu-qt5" "kactivities" "kcmutils" "kconfig" "kcoreaddons" "kcrash" "kdbusaddons" "kdeclarative" "kdelibs4support" "kdesu" "kdewebkit" "kf5" "kf5no_module" "kidletime" "kio" "kjsembed" "knewstuff" "knotifyconfig" "krunner" "ktexteditor" "ktextwidgets" "kwallet" "kwin" "libgps" "libkscreen" "libksysguard" "phonon4qt5" "plasma-framework" "prison" "qalculate" "qt5" "qt5dbus" "qt5qml" "qt5quick" "qt5script" "qt5test" "solid" "x11" "xcb" "zlib" ];
    nativeBuildInputs = [ "cmake" "kdoctools" "ki18n" ];
    propagatedBuildInputs = [ "kio" "libksysguard" ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  plasma-workspace-wallpapers = {
    buildInputs = [  ];
    nativeBuildInputs = [ "cmake" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  powerdevil = {
    buildInputs = [ "kauth" "kconfig" "kdelibs4support" "kf5" "kglobalaccel" "kidletime" "kio" "knotifyconfig" "plasma-workspace" "qt5" "solid" "udev" "x11" "xcb" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

  systemsettings = {
    buildInputs = [ "kcmutils" "kconfig" "kdbusaddons" "kdelibs4support" "kf5" "khtml" "kiconthemes" "kio" "kitemviews" "kservice" "kwindowsystem" "kxmlgui" "qt5" ];
    nativeBuildInputs = [ "cmake" "ki18n" ];
    propagatedBuildInputs = [  ];
    propagatedNativeBuildInputs = [ "extra-cmake-modules" ];
    propagatedUserEnvPkgs = [  ];
  };

}
