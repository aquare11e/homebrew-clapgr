class Clapgr < Formula
  desc "Upgrade claude-code via Homebrew with release notes and AI-powered summaries"
  homepage "https://github.com/aquare11e/clapgr"
  url "https://github.com/aquare11e/clapgr/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bdb3e88dacb24d94cfd4266ec227e419ccc7beeedb5a9a2a36c66e12ebc3b177"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clapgr"
  end

  test do
    assert_match "clapgr", shell_output("#{bin}/clapgr --version")
  end
end