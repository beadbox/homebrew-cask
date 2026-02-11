cask "beadbox" do
  version "0.6.0"

  on_arm do
    sha256 "125a0405790839232cbabbe7c3344df78b0d8769931c8d0b343acb6f4d21b416"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "400575183407a169a4fab34e80251b15f1d3e037f13bf52794a28722ee18268f"
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
