cask "codexbarmenubar" do
  version "0.32.4"
  sha256 "9b3aee64d700fc2cc69182226e794e0cf6095c447397c444709ef8b11d191174"

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
