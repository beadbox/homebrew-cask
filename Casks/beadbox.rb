cask "beadbox" do
  version "0.5.1"
  sha256 "afd900e67596a8c664539da8ac1a6a48b4be6a3bb907e636655c23a90997e78e"

  url "https://github.com/beadbox/beadbox/releases/download/v0.5.1/Beadbox-0.5.1-arm64.dmg"
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
