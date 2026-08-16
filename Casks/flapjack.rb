cask "flapjack" do
  version "1.12.0"
  sha256 "50c09eda87a403eef942fc84fa81c5ffc9c985667e01d3a3181b91fe4645e17f"

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
