class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.11/nak-aarch64-apple-darwin.tar.gz"
      sha256 "d16d42fe9b530515e53f7ad2edde229fc2ee437d7ee87747dfb7cb14b101bb90"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.11/nak-x86_64-apple-darwin.tar.gz"
      sha256 "869b257a94699f535536d32c31f17dca12adf2127b5504da3a206355c1a8d55a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.11/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70aa004e1da6cd13d98ea44e07669e1b32bf0af1e1f63454925dbb96ea8c6210"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.11/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86938e7cacb3c1442cfa7340bedbf0a222699e957bc1cc71e868fa6d55ca16a3"
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
