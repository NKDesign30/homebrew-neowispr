cask "neowispr" do
  version "0.0.22,116"
  sha256 "e71af3eed8d243ecb4af4bc715a4972383574eef7a06b18ecc5bc2563b798b45"

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
