cask "keypad" do
  version "0.1.1"
  sha256 "ec1a426dca9f1108bf81d904f8ec4fcddb95d4037c9d2383d4c4c7593aa383bc"

  url "https://github.com/berkanaslan/keypad/releases/download/v#{version}/Keypad-#{version}.dmg"
  name "Keypad"
  desc "Turns the trackpad into a numeric keypad"
  homepage "https://github.com/berkanaslan/keypad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Keypad.app"

  uninstall quit: "io.berkan.keypad"

  zap trash: [
    "~/Library/Application Scripts/io.berkan.keypad",
    "~/Library/Containers/io.berkan.keypad",
  ]
end
