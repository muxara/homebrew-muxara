cask "muxara" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "b7e8a1fd844c65d4d65bffd9175d7ac0be994393bd6a1088d98d1752727903b5",
         intel: "dfb1df6aed58e525428a0e078e827c216a829089a2c435665d1f79a772593fd5"

  url "https://github.com/muxara/muxara/releases/download/v#{version}/Muxara_#{version}_#{arch}.dmg",
      verified: "github.com/muxara/muxara/"
  name "Muxara"
  desc "Desktop control plane for managing parallel Claude Code sessions"
  homepage "https://github.com/muxara/muxara"

  depends_on macos: ">= :monterey"

  app "Muxara.app"

  zap trash: [
    "~/Library/Application Support/com.muxara.app",
    "~/Library/Preferences/com.muxara.app.plist",
  ]
end
