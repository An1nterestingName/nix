{lib, mkKdeDerivation, fetchFromGitHub, cmake, kdePackages}:

let
  kde = kdePackages;
in
mkKdeDerivation rec {
  pname = "kwin-effects-forceblur";
  version = "git";

  outputs = ["out" "dev"];

  src = fetchFromGitHub {
    owner = "taj-ny";
    repo = "kwin-effects-forceblur";
    rev = "main";
    sha256 = "sha256-6FN7XEf27DenQHDIKjrjOW3tGIaJlyqRlXarmt1v+M0=";
  };

  nativeBuildInputs = [
    cmake
    kde.extra-cmake-modules
    kde.wrapQtAppsHook
  ];
  buildInputs = with kde; [
    qtbase
    qttools
    kconfigwidgets
    kcoreaddons
    frameworks.kio
    frameworks.knotifications
    frameworks.kglobalaccel
    frameworks.kservice
    frameworks.kcmutils
    frameworks.kcoreaddons
    frameworks.kconfigwidgets
    kconfig
    kguiaddons
    kwin
  ];

  meta = with lib; {
    description = "A fork of the Plasma 6 Blur Effect with additional features and bug fixes.";
    license = licenses.gpl3;
    maintainers = with maintainers; [];
    platforms = platforms.linux;
  };
}
