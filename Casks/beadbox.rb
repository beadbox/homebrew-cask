cask "beadbox" do
  version "0.19.0"

  arch arm: "arm64"

  sha256 "fa17f9c41804ac17a1aec3985b32fad3989b5145340eccf20ff46055a54d46ab"
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
