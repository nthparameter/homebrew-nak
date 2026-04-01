class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.13/nak-aarch64-apple-darwin.tar.gz"
      sha256 "9add6b2cd4933d2ce3812579d3e7359804cff305096c53a7fc7dd37dc71487a3"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.13/nak-x86_64-apple-darwin.tar.gz"
      sha256 "69a41c0f60d7a103ea8476331c1ba760ac7a187d3ecbdd40dda6bfde64256ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.13/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8715a09407fe239e6d92c1174beb4bffc09c66e97feb3f1bfcf85e569e20138"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.13/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "13837989b089caeaa6ebda11f7c1da3d0311f5a3c92862c1979283286596d22d"
    end
  end

  def install
    bin.install "nak"
    bin.install "nak-gui" if File.exist? "nak-gui"
  end

  test do
    assert_match "nak #{version}", shell_output("#{bin}/nak --version")
  end
end
