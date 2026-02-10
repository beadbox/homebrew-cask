cask "beadbox" do
  version "0.4.12"
  sha256 "6eb38dc4326a8e87a33077edb8399cdcb948a2678fc69c72eecdfa4989a42e02"

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
