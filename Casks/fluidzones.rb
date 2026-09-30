cask "fluidzones" do
  version "1.9.1"
  sha256 "da8eb5f7964924f5c76e289cec8fcdf0ea447fb2b9cba1aa5072f6161204382f"

  url "https://github.com/yavallejo/fluidzones-releases/releases/download/v#{version}/FluidZones-#{version}-arm64.dmg"
  name "FluidZones"
  desc "Workspace launcher — open your full context with one keypress"
  homepage "https://fluidzones.com/"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "FluidZones.app"

  zap trash: [
    "~/Library/Application Support/fluidzones",
    "~/Library/Preferences/com.fluidzones.app.plist",
  ]
end
