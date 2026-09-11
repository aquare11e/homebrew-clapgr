class Clapgr < Formula
  desc "Upgrade claude-code via Homebrew with release notes and AI-powered summaries"
  homepage "https://github.com/aquare11e/clapgr"
  url "https://github.com/aquare11e/clapgr/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "1c8ecdb3ae61d5b64e95354aafb2bc2b345cf1d3157018739aecbd283735a40d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clapgr"
  end

  test do
    assert_match "clapgr", shell_output("#{bin}/clapgr --version")
  end
end