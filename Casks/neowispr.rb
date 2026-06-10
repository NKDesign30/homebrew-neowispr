cask "neowispr" do
  version "0.0.27,152"
  sha256 "c27ca4eda4532099b21b4bbb1612360729a2ba5044f3eb3e23c4e88ba19ea9a8"

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
