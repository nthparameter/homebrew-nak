class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.23"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.23/nak-aarch64-apple-darwin.tar.gz"
      sha256 "dc9f52edf2cd3847b44aade33dc06099f9ac95dcb981800556dc3b2bdb582e4a"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.23/nak-x86_64-apple-darwin.tar.gz"
      sha256 "447d033bb37d41412323370e6d7f496d2e4c6b5fdf4911ae10da41597d48b630"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.23/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ea6125013d3934194a2b9780506e4565fedb9f3531d4e0eeb5d3cd31e2dda86"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.23/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0b4178bdc1868b45ad10da63c5363e228f5ab686749cd6fc8e2e5757fea5cae"
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
