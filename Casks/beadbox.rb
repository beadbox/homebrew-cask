cask "beadbox" do
  version "0.4.8"
  sha256 "e605da422074b35c03c0e50565449fb3fdd5cc707329925f0afb4bd719f72029"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.8/Beads-0.4.8-arm64.dmg"
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
