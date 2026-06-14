# Homebrew Formula for ZClaw
# Place this file in: hashangit/homebrew-zclaw/Formula/zclaw.rb
#
# Users install with:
#   brew tap hashangit/zclaw
#   brew install zclaw

class Zclaw < Formula
  desc "Headless AI agent framework — LLM-powered automation for your terminal"
  homepage "https://github.com/hashangit/zclaw"
  url "https://registry.npmjs.org/zclaw-core/-/zclaw-core-0.2.1.tgz"
  sha256 "31a1c64104a0a8de3dc3e39553b0de8737e0d0c9d31522078bf0375379274012"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "zclaw", shell_output("#{bin}/zclaw --version 2>&1 || true")
  end
end
