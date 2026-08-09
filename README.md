# homebrew-tap

Personal Homebrew tap for [s4lly](https://github.com/s4lly).

```sh
brew tap s4lly/tap
brew trust s4lly/tap   # newer Homebrew requires trusting third-party taps once
```

## Casks

- **[flapjack](https://github.com/s4lly/flapjack)** — lightweight split-flap desktop clock for macOS.

  ```sh
  brew install --cask flapjack
  # ad-hoc signed, not notarized — clear Gatekeeper quarantine once:
  xattr -dr com.apple.quarantine /Applications/Flapjack.app
  ```
