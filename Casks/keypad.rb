cask "keypad" do
  version "0.1.0"
  sha256 :no_check

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

  zap trash: [
    "~/Library/Application Scripts/io.berkan.keypad",
    "~/Library/Containers/io.berkan.keypad",
  ]
end
