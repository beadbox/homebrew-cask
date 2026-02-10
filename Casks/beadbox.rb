cask "beadbox" do
  version "0.4.12"
  sha256 "6e493c6833a54887ac14a4aa4c8b1f37cfe6916980a7565e39fc950441e7777c"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.12/Beadbox_0.4.12_aarch64.dmg"
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
