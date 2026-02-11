cask "beadbox" do
  version "0.6.3"

  on_arm do
    sha256 "cb46cddec2a783e20f0cafd704df1ca6a20500012aa17b607e67eefcffbfc3a1"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-arm64.dmg"
  end

  on_intel do
    sha256 "da4f94a50cab6402afeafd50c330bf8d840ef288bb92d23b40e1aab98f00c889"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-macOS-x64.dmg"
  end

  name "Beadbox"
  desc "Desktop app for the beads issue tracker"
  homepage "https://github.com/beadbox/beadbox"

  depends_on macos: ">= :ventura"

  app "Beadbox.app"

  zap trash: [
    "~/Library/Application Support/com.nmelo.beads-ui",
    "~/Library/Caches/com.nmelo.beads-ui",
    "~/Library/Preferences/com.nmelo.beads-ui.plist",
  ]
end
