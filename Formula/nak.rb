class Nak < Formula
  desc "A terminal-based text editor"
  homepage "https://github.com/nthparameter/nak"
  version "0.0.12"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.12/nak-aarch64-apple-darwin.tar.gz"
      sha256 "95f97b2c74d612c8a3e17234aa0bc39602a46151dd677c3512bebb5e5c06c059"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.12/nak-x86_64-apple-darwin.tar.gz"
      sha256 "99345adfb058c099016e0df5d6a50d7cc3e0c6b909dc819450768b9c0fb51a79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.12/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3c36419f7f2f22418691f39c9129c74e7e741d2be370da2685ca8745db54e4d"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.12/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd07a562d4b271f824f35c2a7f93f5d104bdb0ae6b983b9bd5298b425aafb38f"
    end
  end

  def install
    bin.install "nak"
  end

  test do
    assert_match "nak #{version}", shell_output("#{bin}/nak --version")
  end
end
