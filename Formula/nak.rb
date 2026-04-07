class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.18"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.18/nak-aarch64-apple-darwin.tar.gz"
      sha256 "27e161d5d41cdf47933a133035d9e065ba062deff33e0007f605fd1aa4b9cb90"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.18/nak-x86_64-apple-darwin.tar.gz"
      sha256 "4be7b743ca6a70ea3c0733ed2823b81b8d574a9c6d30012f4cb6d96291a80a15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.18/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eed92c68402bbb34478285637627519cb7eec15d4065b329cb7de5a2684b0df4"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.18/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d58f056669aa0ac7c71c80b182dca6f11ba66492209363f59890a0d798f6bf86"
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
