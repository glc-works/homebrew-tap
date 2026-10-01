class Canonforge < Formula
  include Language::Python::Virtualenv

  desc "The Git-Native Literary Engineering Studio & Multi-Universe Canon Orchestrator"
  homepage "https://github.com/glc-works/canonforge"
  url "https://github.com/glc-works/canonforge/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "a6544af97e309d96d2c2543ea1cd7d8c13a40b04d6a872a232b19ec5c7dad754"
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
