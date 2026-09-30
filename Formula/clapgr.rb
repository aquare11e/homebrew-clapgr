class Clapgr < Formula
  desc "Upgrade claude-code via Homebrew with release notes and AI-powered summaries"
  homepage "https://github.com/aquare11e/clapgr"
  url "https://github.com/aquare11e/clapgr/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "4eba6ff7e2eff9cfa6884adc3528424189544e4726b75987adfb84ca4dc3bf6c"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clapgr"
  end

  test do
    assert_match "clapgr", shell_output("#{bin}/clapgr --version")
  end
end