cask "muxara" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "691727e33f450abda00ab3a1539429565d275d17bce81850d66ccaa18fed89cf",
         intel: "99b310efd0219bdce15ffd262fee3d28dd2b5b957503e02d16060f0a42604a6d"

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
