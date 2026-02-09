cask "beadbox" do
  version "0.4.0"
  sha256 "6326e7d40a33f5f72e6c8277b6e0d582672e097fa35f3531586c05a37e94fbe8"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.0/Beads-0.4.0-arm64.dmg"
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
