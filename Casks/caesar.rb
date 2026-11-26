cask "caesar" do
  version "1.0.11"
  sha256 "a8bd5b61de87d3c512e365dc1835c5ee6e0d0797280cb889ae49f25b705ab829"

  url "https://github.com/cesargarridor/caesar/releases/download/v#{version}/Caesar_#{version}_universal.dmg"
  name "Caesar"
  desc "Fast native API client with collections, GraphQL, WebSocket and encrypted sync"
  homepage "https://cesargarridor.github.io/caesar/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Caesar.app"

  zap trash: [
    "~/Library/Application Support/app.caesar.client",
    "~/Library/Caches/app.caesar.client",
    "~/Library/Preferences/app.caesar.client.plist",
    "~/Library/Saved Application State/app.caesar.client.savedState",
    "~/Library/WebKit/app.caesar.client",
  ]
end
