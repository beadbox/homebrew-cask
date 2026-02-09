cask "beadbox" do
  version "0.4.3"
  sha256 "00900d60b9d4d75a557aeaa6099617a4ff4cad0e19b9b118b9b0890e2ae2219f"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.3/Beads-0.4.3-arm64.dmg"
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
