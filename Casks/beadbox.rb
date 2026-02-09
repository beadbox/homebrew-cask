cask "beadbox" do
  version "0.4.0"
  sha256 "20d783601424f0fa8a7c48ced1d1f7c112e07cf9498f407330b2b44f395987d0"

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
