cask "fluidzones" do
  version "1.15.0"
  sha256 "7f646c81b122a9af617e96cc4078d9b82268119a56d191ee8aa74871b1aa30df"

  url "https://github.com/yavallejo/fluidzones-releases/releases/download/v#{version}/FluidZones-#{version}-arm64.dmg"
  name "FluidZones"
  desc "Workspace launcher — open your full context with one keypress"
  homepage "https://fluidzones.com/"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "FluidZones.app"

  zap trash: [
    "~/Library/Application Support/fluidzones",
    "~/Library/Preferences/com.fluidzones.app.plist",
  ]
end
