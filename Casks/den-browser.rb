cask "den-browser" do
  version "0.28.1"
  sha256 "c2be3b63c4b220557b3ee53e5903f0630102d41f080567bc36ffbe0b46bf8d62"

  url "https://github.com/nekonata-team/den-browser/releases/download/v#{version}/Den-Browser-#{version}-macOS.zip"
  name "Den Browser"
  desc "Niri-inspired spatial browser for persistent web work"
  homepage "https://den.nekonata.dev/"

  auto_updates true
  depends_on macos: :tahoe

  app "Den Browser.app"

  zap trash: [
    "~/Library/Application Support/Den Browser",
    "~/Library/Caches/dev.nekonata.denbrowser",
    "~/Library/Containers/dev.nekonata.denbrowser",
    "~/Library/HTTPStorages/dev.nekonata.denbrowser.binarycookies",
    "~/Library/Preferences/dev.nekonata.denbrowser.plist",
    "~/Library/WebKit/dev.nekonata.denbrowser",
  ]
end
