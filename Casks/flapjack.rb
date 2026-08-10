cask "flapjack" do
  version "1.3.1"
  sha256 "5e0fb4e81b27af1f2ce5fa96138f69b6b14c1a2000b74e716afdec5c1f03b56c"

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
