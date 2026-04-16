cask "beadbox" do
  version "0.23.2"

  arch arm: "arm64"

  sha256 "97744138328686390f25142a0da0fdf3c74fee4423d2ab2ef41d950bfd124187"
  url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-arm64.dmg"

  name "Beadbox"
  desc "Desktop app for the beads issue tracker"
  homepage "https://github.com/beadbox/beadbox"

  depends_on macos: ">= :ventura"

  app "Beadbox.app"

  zap trash: [
    "~/Library/Application Support/com.nmelo.beadbox",
    "~/Library/Caches/com.nmelo.beadbox",
    "~/Library/Preferences/com.nmelo.beadbox.plist",
    "~/Library/Application Support/com.nmelo.beads-ui",
    "~/Library/Caches/com.nmelo.beads-ui",
    "~/Library/Preferences/com.nmelo.beads-ui.plist",
  ]
end
