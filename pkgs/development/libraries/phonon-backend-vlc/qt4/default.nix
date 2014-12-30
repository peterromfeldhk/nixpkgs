{ stdenv, fetchurl, xz, vlc, automoc4, cmake, pkgconfig, phonon, qt4 }:

with stdenv.lib;

let
  pname = "phonon-backend-vlc";
  v = "0.8.2";
in

stdenv.mkDerivation {
  name = "${pname}-${v}";

  src = fetchurl {
    url = "mirror://kde/stable/phonon/${pname}/${v}/${pname}-${v}.tar.xz";
    sha256 = "18ysdga681my75lxxv5h242pa4qappvg5z73wnc0ks9yypnzidys";
  };

  nativeBuildInputs = [ cmake pkgconfig automoc4 xz ];

  buildInputs = [ vlc phonon qt4];

  meta = {
    homepage = http://phonon.kde.org/;
    description = "VideoLAN backend for Phonon multimedia framework";
    platforms = platforms.linux;
    maintainers = with maintainers; [ ttuegel urkud ];
    license = licenses.lgpl21Plus;
  };
}
