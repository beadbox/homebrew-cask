cask "beadbox" do
  version "0.4.12"
  sha256 "b0848e07b5346611ff5f2088ed5be0404cb2c71ac38a0e4e8372738e6dc1ebc6"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.12/Beadbox-0.4.12-arm64.dmg"
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
