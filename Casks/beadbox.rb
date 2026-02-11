cask "beadbox" do
  version "0.6.2"

  on_arm do
    sha256 "451f22a48c5a1b41099dcbbe9976be96b0a0616f3649e5eae100f09c8386089e"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "eeb2489f43dbc79bbd32eb079d180a4862180ef17a422b574cf90b3d73d9503c"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-x64.dmg"
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
