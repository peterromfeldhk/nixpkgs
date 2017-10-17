{ lib, bundlerEnv, ruby }:

bundlerEnv rec {
  inherit ruby;
  pname = "match";
  version = "1.0.0";
  name = "fastlane-plugin-${pname}-${version}";
  gemdir = ./.;

  meta = with lib; {
    description     = "Simplify your iOS codesigning setup and prevent code signing issues.";
    homepage        = https://docs.fastlane.tools/actions/match/;
    license         = licenses.mit;
    maintainers     = with maintainers; [
      peterromfeldhk
    ];
  };
}
