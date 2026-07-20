cask "den-browser" do
  version "0.3.0"
  sha256 "7be6fd1423229ff3995b87fdcb643567afebf611653b7937a542d384145f616f"

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
