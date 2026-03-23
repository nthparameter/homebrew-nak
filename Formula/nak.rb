class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.3/nak-aarch64-apple-darwin.tar.gz"
      sha256 "af35423ae12179576e51592acce78518373c3f3bf08234546fcf032d6464de5b"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.3/nak-x86_64-apple-darwin.tar.gz"
      sha256 "c1658b48459244a42a019d3f275dddcc25f722cd26e1dbbd0feca014c8f401eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.3/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2df4d07c47e5ef7d0492ac69f36eac8442a50c1821ea968e3ff890732ba4a78"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.3/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0368d9fe6dc0a6723ac50547ae76b41093aee72dbe465f55e4dc1766328f2e31"
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
