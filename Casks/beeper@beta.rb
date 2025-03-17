cask "beeper@beta" do
  version :latest
  sha256 :no_check

  url "https://api.beeper.com/desktop/download/macos/arm64/stable/com.automattic.beeper.desktop"
  name "Beeper"
  desc "All your chats in one app"
  homepage "https://www.beeper.com/"

  auto_updates true

  app "Beeper Desktop.app"
end
