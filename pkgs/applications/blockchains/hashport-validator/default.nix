{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "hashport-validator";
  version = "1.5.2";

  src = fetchFromGitHub {
    owner = "LimeChain";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-vQy4H/FDov4XFANuKTNWOpKYTp+Y/HoLTAWUCsBLAU0=";
  };

  vendorHash = "sha256-X5ySZxp/AbRvP+2xhIz80iaaeeNGWyMS3a7SIdcuOF8=";

  subPackages = [ "cmd" ];

  # FIXME: `-o ${pname}` how to rename output binary (we could just rename it with `postInstall` or so)

  meta = with lib; {
    description = "Hedera <-> EVM Bridge Node";
    homepage = "https://github.com/LimeChain/hashport-validator";
    license = licenses.asl20;
    maintainers = with maintainers; [ peterromfeldhk ];
  };
}
