class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.9"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.9/nak-aarch64-apple-darwin.tar.gz"
      sha256 "f256ae1cf126b0b07fd202a75aabda04d181c3fddd7a0e37618c4912e775706f"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.9/nak-x86_64-apple-darwin.tar.gz"
      sha256 "a5eb4bb3cf820e035777359e8805021aaf3c121c9b5227093c545aafc89d1a4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.9/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0819042a92d151e2a3fe84ef80bae58ae2c595f73f2dccf24443f941612b86f"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.9/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0421807a17f0719c2632dcfddd0e42bb9d6a01f7984fd9ba8dfa434c87088bee"
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
