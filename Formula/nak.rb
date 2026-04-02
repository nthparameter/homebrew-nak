class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.15/nak-aarch64-apple-darwin.tar.gz"
      sha256 "5619c8cea6ac0c44eb16baee01e6ca4e78489d0b26af0c41335ba6f794a9d256"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.15/nak-x86_64-apple-darwin.tar.gz"
      sha256 "4f049bc104d40816c22479d13eb3a1228a4cc4073ec325f88cd7ee1d75a4ac24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.15/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00642195ed24f8adfe56c732304541a6c1ee9461bd3b34a6844d85b0a6e29d9a"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.15/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b47b0435d0f33773f54ece560343c8b12f530797d7eb971f253af4d61ac1c5a"
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
