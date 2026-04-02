cask "beadbox" do
  version "0.20.0"

  arch arm: "arm64"

  sha256 "f852bbf90db404450727b04a52169fdf2ddd7661c57e20c2a88e97c2e94f0d1d"
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
