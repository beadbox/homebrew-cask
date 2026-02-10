cask "beadbox" do
  version "0.4.11"
  sha256 "00637190b21a5e6971d00b58a58c313ecf24154e35ae0a5734829783819d2f17"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.11/Beadbox-0.4.11-arm64.dmg"
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
