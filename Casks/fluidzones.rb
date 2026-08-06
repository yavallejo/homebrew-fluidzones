cask "fluidzones" do
  version "1.0.0"
  sha256 "3277da17cb827e4329aa640686b7add88b8deb61cc4093108ed72f81b1d91bbc"

  url "https://github.com/yavallejo/fluidzones-releases/releases/download/v#{version}/FluidZones-#{version}-arm64.dmg"
  name "FluidZones"
  desc "macOS workspace launcher — open your full context with one keypress"
  homepage "https://fluidzones.com"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "FluidZones.app"

  zap trash: [
    "~/Library/Application Support/fluidzones",
    "~/Library/Preferences/com.fluidzones.app.plist",
  ]
end
