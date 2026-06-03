cask "codex-switchboard" do
  version "1.0.9-beta.6"
  sha256 "1cd528429afa5f8c8399f949bc5180ad89d99c86818482cfdfe250992ae864ba"

  url "https://github.com/vyctorbrzezowski/codex-switchboard/releases/download/v#{version}/CodexSwitchboard-#{version}.pkg"
  name "Codex Switchboard"
  desc "Menu bar account switcher for Codex"
  homepage "https://github.com/vyctorbrzezowski/codex-switchboard"

  livecheck do
    skip "Beta releases are published as GitHub pre-releases"
  end

  depends_on macos: :ventura

  pkg "CodexSwitchboard-#{version}.pkg"

  uninstall quit:    "app.codexswitchboard.menubar",
            pkgutil: "app.codexswitchboard.menubar"

  zap trash: [
    "~/Library/Application Support/CodexSwitchboard",
    "~/Library/HTTPStorages/app.codexswitchboard.menubar",
    "~/Library/Preferences/app.codexswitchboard.menubar.plist",
  ]
end
