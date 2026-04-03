class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.16"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.16/nak-aarch64-apple-darwin.tar.gz"
      sha256 "ff190ee634889f8bc39b40a2fd2240f85f4c5749929d10a71efaefa00b0ed669"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.16/nak-x86_64-apple-darwin.tar.gz"
      sha256 "51bc2ae81f5309d4491a3c36a1374642865aa0c7395d08e179288bdc4a2e0d09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.16/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "257aacee4c89f09574d76b4156c4763b47681a1c05586fe486be6f95d8d4206a"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.16/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "160f26f1a6bdca9eaa3b12ba52e7c0a70255f197c10cb6427ef43936356b7185"
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
