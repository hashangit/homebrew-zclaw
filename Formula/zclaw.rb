class Zclaw < Formula
  desc "Headless AI agent framework — CLI, SDK, and server adapters"
  homepage "https://github.com/hashangit/zclaw"
  url "https://registry.npmjs.org/zclaw-core/-/zclaw-core-0.2.0.tgz"
  sha256 "73401da030eb9f3690640524f04d57eddf7452b99dd72422b575e5dd8ea0f759"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/zclaw --version 2>&1")
  end
end
