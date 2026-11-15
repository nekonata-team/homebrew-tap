cask "den-browser" do
  version "0.61.0"
  sha256 "f82cfa9c0d08c03e7baf88bacfec0b6205e11fef954ca7399ea780d7b9adc38d"

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
