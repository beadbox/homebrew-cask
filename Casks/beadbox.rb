cask "beadbox" do
  version "0.5.0"
  sha256 "576f35c0a62bf4a19448a6c3cd1fe0f6780c416599439099c9ea8a378e5504c8"

  url "https://github.com/beadbox/beadbox/releases/download/v0.5.0/Beadbox-0.5.0-arm64.dmg"
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
