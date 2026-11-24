cask "caesar" do
  version "1.0.8"
  sha256 "c8391b6fef12fad525065a30e6b9b914610769f2864f8194052d42cc6986d66c"

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
