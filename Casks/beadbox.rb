cask "beadbox" do
  version "0.4.12"
  sha256 "3fb6d1f03fc8af90ed00aa1ed6691b635109da6366a92f5172c2e08763286d00"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.12/Beadbox_0.4.12_aarch64.dmg"
  name "Beadbox"
  desc "Desktop app for the beads issue tracker"
  homepage "https://github.com/beadbox/beadbox"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Beadbox.app"

  zap trash: [
    "~/Library/Application Support/com.nmelo.beads-ui",
    "~/Library/Caches/com.nmelo.beads-ui",
    "~/Library/Preferences/com.nmelo.beads-ui.plist",
  ]
end
