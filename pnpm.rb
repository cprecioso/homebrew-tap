class Pnpm < Formula
  desc "Fast, disk space efficient package manager"
  homepage "https://pnpm.js.org/"
  url "https://registry.npmjs.org/pnpm/-/pnpm-3.6.0.tgz"
  sha256 "7d419fb0afce6fefc415533003873b065f5fb9663511b073f3a87c1af549f77b"

  bottle :unneeded

  depends_on "node"

  def install
    libexec.install Dir["*"]
    (bin/"pnpm").write_env_script "#{libexec}/bin/pnpm.js", :PREFIX => HOMEBREW_PREFIX, :NPM_CONFIG_PYTHON => "/usr/bin/python"
    (bin/"pnpx").write_env_script "#{libexec}/bin/pnpx.js", :PREFIX => HOMEBREW_PREFIX, :NPM_CONFIG_PYTHON => "/usr/bin/python"
  end

  test do
    (testpath/"package.json").write('{"name": "test"}')
    system bin/"pnpm", "install", "jquery"
    system bin/"pnpm", "install", "fsevents", "--build-from-source=true"
    system bin/"pnpx", "-p", "macos-version-cli", "macos-version"
  end
end
