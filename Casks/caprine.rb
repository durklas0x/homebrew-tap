cask "caprine" do
  arch arm: "-arm64"

  version "2.62.0"
  sha256 arm:   "84da346727956d28955d13c47882c55f720563fff8190fd8127ed7c568c326e5",
         intel: "cdc47753e4c274a237252eb47e2f1479d1944a74b939cdc5c4b90d3fd3367b1a"

  on_arm do
    depends_on macos: :monterey
  end
  on_intel do
    depends_on :macos
  end

  url "https://github.com/bankjaneo/caprine/releases/download/v#{version}/Caprine-#{version}#{arch}.dmg"
  name "Caprine"
  desc "Elegant Facebook Messenger desktop app"
  homepage "https://github.com/bankjaneo/caprine"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Caprine.app"

  zap trash: [
    "~/Library/Application Support/Caprine",
    "~/Library/Caches/com.sindresorhus.caprine",
    "~/Library/Caches/com.sindresorhus.caprine.ShipIt",
    "~/Library/Logs/Caprine",
    "~/Library/Preferences/com.sindresorhus.caprine.helper.plist",
    "~/Library/Preferences/com.sindresorhus.caprine.plist",
    "~/Library/Saved Application State/com.sindresorhus.caprine.savedState",
  ]
end
