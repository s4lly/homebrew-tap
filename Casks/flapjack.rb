cask "flapjack" do
  version "1.1.0"
  sha256 "0169e6e2f1c0bbee58e5dd5fec03d4b26d70a88834b92978790153d8cbb19ccc"

  url "https://github.com/s4lly/flapjack/releases/download/v#{version}/Flapjack-#{version}.zip"
  name "Flapjack"
  desc "Lightweight split-flap desktop clock"
  homepage "https://github.com/s4lly/flapjack"

  app "Flapjack.app"

  caveats <<~EOS
    Flapjack is ad-hoc signed (not notarized), so Gatekeeper will block the
    first launch. Either right-click > Open once, or clear quarantine with:
      xattr -dr com.apple.quarantine /Applications/Flapjack.app
  EOS
end
