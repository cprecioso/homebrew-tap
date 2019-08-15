class Pnpm < Formula
  desc "Fast, disk space efficient package manager"
  homepage "https://pnpm.js.org/"
  url "https://registry.npmjs.org/pnpm/-/pnpm-3.7.0.tgz"
  sha256 "6f0a9340e874c144ce1303862be583b13cf72b6a0de69a729255585db71758f8"

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
