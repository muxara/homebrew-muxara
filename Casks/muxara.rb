cask "muxara" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "138c9d416a269b90b0742d86f9066ccb6bd7afc65ae062d73ea07e04b33efdcd",
         intel: "0bf291a95c9946f4646617f56ff70071573d424def50f647873307baaa79499a"

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
