cask "codexbarmenubar" do
  version "0.32.2"
  sha256 "4f4f28fc395bd72f793bc0961517991a6beabc901cefb4a02032e4ed92d89d8e"

  url "https://github.com/Lobobodev/CodexBarMenuBar/releases/download/v#{version}/CodexBarMenuBar-v#{version}.zip",
      verified: "github.com/Lobobodev/CodexBarMenuBar/"
  name "CodexBarMenuBar"
  desc "macOS menu bar app showing AI provider usage at a glance via CodexBar CLI"
  homepage "https://github.com/Lobobodev/CodexBarMenuBar"

  depends_on macos: ">= :sequoia"
  depends_on cask: "codexbar"

  app "CodexBarMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.lobo.CodexBarMenuBar.plist",
    "~/Library/Application Support/CodexBarMenuBar",
  ]
end
