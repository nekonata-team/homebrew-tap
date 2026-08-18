cask "den-browser" do
  version "0.21.0"
  sha256 "1310c65b62c76e4093dcc814994c510b9fab1144eec4cd96bd604534a7d4f9d4"

  url "https://github.com/nekonata-team/den-browser/releases/download/v#{version}/Den-Browser-#{version}-macOS.zip",
      verified: "github.com/nekonata-team/den-browser/"
  name "Den Browser"
  desc "Niri-inspired spatial browser for persistent web work"
  homepage "https://nekonata.dev/"

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
