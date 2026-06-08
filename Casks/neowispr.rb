cask "neowispr" do
  version "0.0.20,114"
  sha256 "db5502366314e9890cfa49669021de21bfb9e39380b1e4dbd023c6f174085357"

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
