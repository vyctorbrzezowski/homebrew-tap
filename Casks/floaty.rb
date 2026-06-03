cask "floaty" do
  version "0.1.0"
  sha256 "118c8f3032400cb4e98b0bb87e20131e88f2d618655feb21e17da068ce58c34e"

  url "https://github.com/vyctorbrzezowski/floaty/releases/download/v#{version}/Floaty-v#{version}.zip"
  name "Floaty"
  desc "Picture-in-picture lyrics window for Spotify"
  homepage "https://github.com/vyctorbrzezowski/floaty"

  depends_on macos: :ventura

  app "Floaty.app"

  uninstall quit: "com.vyctorbrzezowski.floaty"

  zap trash: [
    "~/Library/HTTPStorages/com.vyctorbrzezowski.floaty",
    "~/Library/Preferences/com.vyctorbrzezowski.floaty.plist",
  ]
end
