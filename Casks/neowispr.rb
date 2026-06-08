cask "neowispr" do
  version "0.0.23,118"
  sha256 "fbc95456c4a67bdd97b32371e31ab8ed7509faa4754c4f2ceaf0e7bea791c227"

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
