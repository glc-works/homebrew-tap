class Okf < Formula
  include Language::Python::Virtualenv

  desc "Open Knowledge Fiction (OKF) Literary Studio CLI"
  homepage "https://github.com/glc-works/okf-studio"
  url "https://github.com/glc-works/okf-studio/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "bb8c1234b2a921e11d653c3ca6b33cd98b555f0e6117600b7684b6e602139470"
  license "MIT"
  head "https://github.com/glc-works/okf-studio.git", branch: "main"

  depends_on "python@3"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Open Knowledge Fiction", shell_output("#{bin}/okf --help")
  end
end
