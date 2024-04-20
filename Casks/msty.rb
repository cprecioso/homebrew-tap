cask "msty" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://assets.msty.app/Msty_#{arch}.dmg"
  name "Msty"
  desc "The simplest way to use local and online LLMs"
  homepage "https://msty.app/"

  app "Msty.app"
end
