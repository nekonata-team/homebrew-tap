cask "den-browser" do
  version "0.6.0"
  sha256 "4c0415b4b6272dc054e4a9fe25e73340bef7193080191db5825e8dcef385a236"

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
