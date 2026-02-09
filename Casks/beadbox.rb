cask "beadbox" do
  version "0.4.4"
  sha256 "6ad491a4217f9308ea9acb383b547cc52e447bc14e437b102b35dc389d8ed3d9"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.4/Beads-0.4.4-arm64.dmg"
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
