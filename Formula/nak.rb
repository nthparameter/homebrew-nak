class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.22"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.22/nak-aarch64-apple-darwin.tar.gz"
      sha256 "eeb665b2b714de9d4585515eadf56abc1b46900b5cad1c2a619d80fd4e0d8663"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.22/nak-x86_64-apple-darwin.tar.gz"
      sha256 "db86f0cac83c2f1b45c1bcff1260a225e0d8b0746e59605754c00125faa1e563"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.22/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e7cf51c8f9c93126e709b80b87d519c3525231dc2fc7bc10d5f1a0e3f0ba96d"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.22/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e245e0e8e4083d28e7e2cf93d5a670345af5ebf751276a7f80491c5da2e4e2d6"
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
