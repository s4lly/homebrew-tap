cask "flapjack" do
  version "1.6.0"
  sha256 "f0a92d60c56baf5f30a42edc17dbcb32f85a6f04e0b507c957a04951949445ad"

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
