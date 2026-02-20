cask "beadbox" do
  version "0.9.5"

  on_arm do
    sha256 "c4dcead3d65db4704bd8cac599d93f60159c5541122737d9d8b036445486005d"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "fbf3f4dc430662c8fbfcaaf7d50ea0c7390c04403605a89f5327e76b6419401a"
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
