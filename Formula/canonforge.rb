class Canonforge < Formula
  include Language::Python::Virtualenv

  desc "The Git-Native Literary Engineering Studio & Multi-Universe Canon Orchestrator"
  homepage "https://github.com/glc-works/canonforge"
  url "https://github.com/glc-works/canonforge/archive/refs/tags/v0.4.10.tar.gz"
  sha256 "7886cd170a5bc469546a67f36fc59ed7f67ccdcc7f2447a1473ea64e72cab986"
  license "MIT"
  head "https://github.com/glc-works/canonforge.git", branch: "main"

  depends_on "python@3.14"

  def install
    python = Formula["python@3.14"].opt_bin/"python3.14"
    venv = virtualenv_create(libexec, python)
    system python, "-m", "pip", "--python=#{libexec}/bin/python", "install", "pyyaml>=6.0", "tabulate>=0.9.0", "jsonschema>=4.0.0"
    venv.pip_install buildpath
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "CanonForge", shell_output("#{bin}/cf --help")
    assert_match "CanonForge", shell_output("#{bin}/canonforge --help")
  end
end
