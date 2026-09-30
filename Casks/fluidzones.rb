cask "fluidzones" do
  version "1.9.2"
  sha256 "680176e7e490358317c6769dab3ea12df761eb130db78d151fffc718a2961043"

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
