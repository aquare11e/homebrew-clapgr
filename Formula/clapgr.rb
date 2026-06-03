class Clapgr < Formula
  desc "Upgrade claude-code via Homebrew with release notes and AI-powered summaries"
  homepage "https://github.com/aquare11e/clapgr"
  url "https://github.com/aquare11e/clapgr/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "22d4459f8bb29379b4dcb6440a3e6f799ca4eb5c8404989198c3a4470031b359"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clapgr"
  end

  test do
    assert_match "clapgr", shell_output("#{bin}/clapgr --version")
  end
end