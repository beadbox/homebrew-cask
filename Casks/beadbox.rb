cask "beadbox" do
  version "0.4.10"
  sha256 "6d742ecfc35c99518f8f738b73bae5b5ec7b0a5dba9bad8a511734b33375c5dd"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.10/Beads-0.4.10-arm64.dmg"
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
