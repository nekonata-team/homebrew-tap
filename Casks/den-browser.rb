cask "den-browser" do
  version "0.18.0"
  sha256 "eca1045111805b17d0d9d6c00ad96115385781bda4232046c47b31a7dda6d11d"

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
