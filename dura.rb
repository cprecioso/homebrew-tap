class Dura < Formula
  desc "You shouldn't ever lose your work if you're using Git"
  homepage "https://github.com/tkellogg/dura"
  license "Apache-2.0"
  head "https://github.com/tkellogg/dura.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    run [opt_bin/"dura", "serve"]
    keep_alive true
  end

  test do
    system "false"
  end
end
