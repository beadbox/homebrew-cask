cask "beadbox" do
  version "0.9.1"

  on_arm do
    sha256 "9881a6bbfaa4169c20d0127dc32978e7326d190ec463ce4df432281f47cef47b"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "2508ee796feafb2f4ef777a1568c2e7b84e58281df3e2d004166377729f4bbbe"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-x64.dmg"
  end

  name "Beadbox"
  desc "Desktop app for the beads issue tracker"
  homepage "https://github.com/beadbox/beadbox"

  depends_on macos: ">= :ventura"

  app "Beadbox.app"

  zap trash: [
    "~/Library/Application Support/com.nmelo.beadbox",
    "~/Library/Caches/com.nmelo.beadbox",
    "~/Library/Preferences/com.nmelo.beadbox.plist",
    "~/Library/Application Support/com.nmelo.beads-ui",
    "~/Library/Caches/com.nmelo.beads-ui",
    "~/Library/Preferences/com.nmelo.beads-ui.plist",
  ]
end
