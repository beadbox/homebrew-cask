cask "beadbox" do
  version "0.9.0"

  on_arm do
    sha256 "74253db793326849277801e1541a84c279298eac15bc5f9de7bd5ae56f42d1f3"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "2e80ca148e0401a8c0cf02cc2b3d63c25539f6b5f0d6a5883bbe97fd659887ae"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-x64.dmg"
  end

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
