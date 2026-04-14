class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.21"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.21/nak-aarch64-apple-darwin.tar.gz"
      sha256 "68730e72b837e335a3d905c2d3b74bc9612a6a8c676340621adb80abd79b81d1"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.21/nak-x86_64-apple-darwin.tar.gz"
      sha256 "e98dae683d0ea40c2241da18ef50a2b4ba28f3838cdfdc4cd2148b2cb738d5e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.21/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78a8de8d22b52491ec2b9421d4d4f3748d138cc34a881e475c954e9b9e3510de"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.21/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3803657e52abfc1a32d5d45ae501296e3db5f244284face9b68886a8c8536421"
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
