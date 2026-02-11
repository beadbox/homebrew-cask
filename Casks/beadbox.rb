cask "beadbox" do
  version "0.6.1"

  on_arm do
    sha256 "0771978d0822bdcd6eded55e79ad7b91fb5f2add3b7facc70471c6fcba716322"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "4f31c206ab49c94e8a771b61ee335b854b2e70b54975f6859e63856852b63792"
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
