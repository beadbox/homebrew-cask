cask "beadbox" do
  version "0.6.0"

  on_arm do
    sha256 "84e321c767c2162eecd44c8be442674b2214e73672a733aea3ade8e61e8e672a"
    url "https://github.com/beadbox/beadbox/releases/download/v#{version}/Beadbox-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "91de2f6d7bf5d5c78b4b1201641c89210b6f5e1cbfba83b33176e06873516aba"
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
