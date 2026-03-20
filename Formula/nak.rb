class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.2/nak-aarch64-apple-darwin.tar.gz"
      sha256 "d938d2da83085bf1e62142e290e01d99cd90eda2729abff9c2d2b85c8e3a299c"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.2/nak-x86_64-apple-darwin.tar.gz"
      sha256 "4c5f8ee5e8f0bd8658a77f4d30f3b1f9b056e727cdf09e93bf2271d0e488bcd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.2/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea363d12f6495d268e881a9ab5bba5077992d565ae92aa0bcc6643a606bbca94"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.2/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "113d49c5a64688af3f95fc70623c0554b4caaa5cf743c3470207810768154bba"
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
