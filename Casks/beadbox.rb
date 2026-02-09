cask "beadbox" do
  version "0.4.5"
  sha256 "64d469be25e4904b18cf1ccd4c1557b96f9a694418888db61ecbafcb6f117d28"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.5/Beads-0.4.5-arm64.dmg"
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
