cask "muxara" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.0"
  # SHA256 checksums will be updated by the release automation workflow
  sha256 arm:   "PLACEHOLDER_ARM_SHA256",
         intel: "PLACEHOLDER_INTEL_SHA256"

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
