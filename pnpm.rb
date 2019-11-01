class Pnpm < Formula
  desc "Fast, disk space efficient package manager"
  homepage "https://pnpm.js.org/"
  url "https://registry.npmjs.org/pnpm/-/pnpm-4.1.7.tgz"
  sha256 "0b67b3629def5ceb3dc7dd79cc9a64946dc2ce0c2aa82645a2b9bba5abb4670a"

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
