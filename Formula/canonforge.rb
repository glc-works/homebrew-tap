class Canonforge < Formula
  include Language::Python::Virtualenv

  desc "The Git-Native Literary Engineering Studio & Multi-Universe Canon Orchestrator"
  homepage "https://github.com/glc-works/canonforge"
  url "https://github.com/glc-works/canonforge/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "d07eb9828cac1b499a4c12743ec74e7c1882cc05a784147b9c0a542f2a8bafa1"
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
