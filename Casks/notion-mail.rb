cask "notion-mail" do
  version :latest
  sha256 :no_check

  url "https://s3.us-west-2.amazonaws.com/mail-desktop-release.notion-static.com/Notion%2BMail-latest-mac-universal.dmg"
  name "Notion Mail"
  desc "Notion Mail is the only inbox that makes life simpler"
  homepage "https://mail.notion.so/"

  auto_updates true

  app "Notion Mail.app"
end
