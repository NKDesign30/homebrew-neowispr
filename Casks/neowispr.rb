cask "neowispr" do
  version "0.3.0"
  sha256 "c532c999960a889a46cd12420d152509b27e4d9a971dfa73aaac8c2c89936c6d"

  url "https://github.com/NKDesign30/NeoWispr/releases/download/v#{version}/NeoWispr-v#{version}.dmg"
  name "NeoWispr"
  desc "Local Whisper dictation app with AI cleanup, snippets and scratchpad"
  homepage "https://github.com/NKDesign30/NeoWispr"

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
