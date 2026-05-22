cask "codexbarmenubar" do
  version "0.28.0"
  sha256 "204fabb57e8abe270d5b2816c115ea184542ffcce1beaeb887997e16687fac2e"

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
