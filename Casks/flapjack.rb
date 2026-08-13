cask "flapjack" do
  version "1.8.0"
  sha256 "bd64fb4893100816ea0102d46144d7346968ef93abf89f0ec6c268c797ac3b06"

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
