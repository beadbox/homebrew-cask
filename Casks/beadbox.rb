cask "beadbox" do
  version "0.3.0"
  sha256 "TODO"

  url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-arm64.dmg"
  name "Beadbox"
  desc "Desktop app for the beads issue tracker"
  homepage "https://github.com/beadbox/beadbox"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Beadbox.app"

  zap trash: [
    "~/Library/Application Support/com.beadbox.app",
    "~/Library/Caches/com.beadbox.app",
    "~/Library/Preferences/com.beadbox.app.plist",
  ]
end
