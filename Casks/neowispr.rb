cask "neowispr" do
  version "0.3.2"
  sha256 "533cd3539e6e11d63d162a24e75900c179305e835de36cdff70467818fda1f33"

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
