cask "bun" do
  version "0.1.3"
  sha256 "7d083cb2131a12b751f8886cf7bbd6378eb72f9389e53e5af3634f1b110b0806"

  url "https://github.com/oven-sh/bun/releases/download/bun-v#{version}/bun-darwin-x64.zip"
  name "bun"
  desc "Incredibly fast JavaScript runtime, bundler, transpiler and package manager - all in one."
  homepage "https://bun.sh/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/bun-v?(\d+(?:[.-]\d+)+)["' >]}i)
  end

  binary "bun-darwin-x64/bun"
end
