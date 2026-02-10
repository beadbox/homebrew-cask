cask "beadbox" do
  version "0.4.12"
  sha256 "72d44d10a510aa0ed72c0e5d7087815c23038b87f6afa0170b442cf4a01df36d"

  url "https://github.com/beadbox/beadbox/releases/download/v0.4.12/Beadbox_0.4.12_aarch64.dmg"
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
