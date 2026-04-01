class Zclaw < Formula
  desc "Lightweight AI agent CLI — LLMs in your terminal"
  homepage "https://github.com/hashangit/zclaw"
  url "https://registry.npmjs.org/zclaw-core/-/zclaw-core-0.1.1.tgz"
  sha256 "bd57b9744917404e0eb33f4eec341a3c2811391882aa93c2a11cab66dc6ba2e0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "zclaw", shell_output("#{bin}/zclaw --help 2>&1")
  end
end
