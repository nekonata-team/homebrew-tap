cask "den-browser" do
  version "0.2.0"
  sha256 "bcdb20683046e689d86f6b1e9177ab2d720bc81c6d920437a7b9124336a6cbda"

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
