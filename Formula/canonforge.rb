class Canonforge < Formula
  include Language::Python::Virtualenv

  desc "The Git-Native Literary Engineering Studio & Multi-Universe Canon Orchestrator"
  homepage "https://github.com/glc-works/canonforge"
  url "https://github.com/glc-works/canonforge/archive/refs/tags/v0.4.6.tar.gz"
  sha256 "011bbaf09624a1502afe4f8331204b11b419feff5047364dc7be60ee532419a8"
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
