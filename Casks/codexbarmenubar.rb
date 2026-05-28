cask "codexbarmenubar" do
  version "0.30.0"
  sha256 "b00c0d51d60390c7629a9a5e693ccf57ad89273e49a2b7b6850736ac6ce62612"

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
