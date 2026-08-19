cask "fluidzones" do
  version "1.5.0"
  sha256 "7a1d33b20a09f11bd89412959608e2c8b470a671e168ffc5ea1d3862574949a3"

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
