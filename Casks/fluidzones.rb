cask "fluidzones" do
  version "1.1.0"
  sha256 "309f12e10eb26fccd0b426c72c4c09c30c42932a00264746523248b69d62dfbe"

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
