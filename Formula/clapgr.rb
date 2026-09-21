class Clapgr < Formula
  desc "Upgrade claude-code via Homebrew with release notes and AI-powered summaries"
  homepage "https://github.com/aquare11e/clapgr"
  url "https://github.com/aquare11e/clapgr/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "95a90ba081d763b60ab6347753f0ccd6d0dee3dbc6ad3e2f307ad10718d4367c"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clapgr"
  end

  test do
    assert_match "clapgr", shell_output("#{bin}/clapgr --version")
  end
end