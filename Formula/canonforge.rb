class Canonforge < Formula
  include Language::Python::Virtualenv

  desc "The Git-Native Literary Engineering Studio & Multi-Universe Canon Orchestrator"
  homepage "https://github.com/glc-works/canonforge"
  url "https://github.com/glc-works/canonforge/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "d79ffbf0fd7e36c0a64d11e5aa5cb20a0a4ddd237194da0415034620fd2c587e"
  license "MIT"
  head "https://github.com/glc-works/canonforge.git", branch: "main"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources using: "python@3.14"
  end

  test do
    assert_match "CanonForge", shell_output("#{bin}/cf --help")
    assert_match "CanonForge", shell_output("#{bin}/canonforge --help")
  end
end
