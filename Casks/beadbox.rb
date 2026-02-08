cask "beadbox" do
  version "0.3.0"
  sha256 "5161d86f0a1645884e745824683418c4602f8dc9ee71a9e816591f8e86f7be04"

  url "https://github.com/nmelo/beadbox/releases/download/v0.3.0/Beads-0.3.0-arm64.dmg"
  name "Beadbox"
  desc "Desktop app for the beads issue tracker"
  homepage "https://github.com/beadbox/beadbox"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Beads.app"

  zap trash: [
    "~/Library/Application Support/com.nmelo.beads-ui",
    "~/Library/Caches/com.nmelo.beads-ui",
    "~/Library/Preferences/com.nmelo.beads-ui.plist",
  ]
end
