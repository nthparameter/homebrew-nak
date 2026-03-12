class Nak < Formula
  desc "A terminal-based text editor"
  homepage "https://github.com/nthparameter/nak"
  version "0.0.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.13/nak-aarch64-apple-darwin.tar.gz"
      sha256 "755eb43ff18d8e88e725cf4327e1f79a631baba4790a15538f29ddb3403d5bd7"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.13/nak-x86_64-apple-darwin.tar.gz"
      sha256 "b4c3f1a8b215a023526e5e667d4abaff3bec0922ef4720876a6d1748c175bce7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.13/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "898ad5947bd9660c2caa34aaf0cb13728975dc02ffad2b39a390413b717c0bea"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.13/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b218e8e3f6436971094cd3e906d73760de1b19b2010471c75d62f149d0b5401"
    end
  end

  def install
    bin.install "nak"
  end

  test do
    assert_match "nak #{version}", shell_output("#{bin}/nak --version")
  end
end
