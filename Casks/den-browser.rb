cask "den-browser" do
  version "0.48.0"
  sha256 "707f3ea403ae86cf3c755619fc905d3c08ddfad4ef4f642bd4ba6acd11541a43"

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
