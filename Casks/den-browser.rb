cask "den-browser" do
  version "0.63.0"
  sha256 "7e0d244f77d516616353b06a54107336eb8017852a64a70d02d4e33e12bb4eca"

  url "https://github.com/nekonata-team/den-browser/releases/download/v#{version}/Den-Browser-#{version}-macOS.zip"
  name "Den Browser"
  desc "Niri-inspired spatial browser for persistent web work"
  homepage "https://den.nekonata.dev/"

  auto_updates true
  depends_on macos: :tahoe

  app "Den Browser.app"
  binary "#{appdir}/Den Browser.app/Contents/MacOS/den"

  zap trash: [
    "~/Library/Application Support/Den Browser",
    "~/Library/Caches/dev.nekonata.denbrowser",
    "~/Library/Containers/dev.nekonata.denbrowser",
    "~/Library/HTTPStorages/dev.nekonata.denbrowser.binarycookies",
    "~/Library/Preferences/dev.nekonata.denbrowser.plist",
    "~/Library/WebKit/dev.nekonata.denbrowser",
  ]
end
