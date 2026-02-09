cask "beadbox" do
  version "0.4.7"
  sha256 "e42a8ee5be181c3e77270e04a436a0bb0b02e7940fbeca167471f438e0d29ef1"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.7/Beads-0.4.7-arm64.dmg"
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
