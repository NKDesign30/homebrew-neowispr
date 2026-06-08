cask "neowispr" do
  version "0.0.19,112"
  sha256 "868a0326949ae1124ded330af9a8822f21a8f924f89c9085935f579a0f6586b1"

  url "https://neowispr.app/NeoWispr.dmg?v=#{version.csv.first}-build#{version.csv.second}"
  name "NeoWispr"
  desc "Local Whisper dictation app with AI cleanup, snippets and scratchpad"
  homepage "https://neowispr.app/"

  livecheck do
    url "https://neowispr.app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "NeoWispr.app"

  zap trash: [
    "~/Library/Application Support/NeoWispr",
    "~/Library/Caches/de.neon.neowispr",
    "~/Library/HTTPStorages/de.neon.neowispr",
    "~/Library/Preferences/de.neon.neowispr.plist",
  ]
end
