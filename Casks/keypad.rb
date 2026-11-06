cask "keypad" do
  version "0.2.0"
  sha256 "a7044a81db70ce9e95de36e9a6cb3f04c3ae9c4b12b8ba017b3c3b8ad873b45e"

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
