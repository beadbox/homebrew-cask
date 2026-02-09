cask "beadbox" do
  version "0.4.2"
  sha256 "85ac16265e568e09f24eabd531ead3f19660b90e0068d4bf55e82ddd2bd7a36e"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.2/Beads-0.4.2-arm64.dmg"
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
