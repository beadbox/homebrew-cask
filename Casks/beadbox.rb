cask "beadbox" do
  version "0.6.1"

  on_arm do
    sha256 "dd80d12f1223c90788d8583a6938c98a6e361dd120957033256dad8eee0a494d"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "6dcd6a4c54e420891912092abdc8b0b1752e7ec695e88a08401396cd824c1e77"
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
