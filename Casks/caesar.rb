cask "caesar" do
  version "1.0.7"
  sha256 "3ce6d87e2a0e088898adf79e5a663d6f666ec7680cfd2e1abaf124c0896bd4ca"

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
