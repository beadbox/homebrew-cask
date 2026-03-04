cask "beadbox" do
  version "0.16.1"

  on_arm do
    sha256 "3ea06e71d5251f2ccaaf69d026ed1df59fe784c10416c71f53ebf26f55551624"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "27a50a02f24bd90266fd435911acfbe0fb87363dbe1358e8eeb5722c54e93506"
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
