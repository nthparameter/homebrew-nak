class Nak < Formula
  desc "A terminal-based text editor"
  homepage "https://github.com/nthparameter/nak"
  version "0.0.14"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.14/nak-aarch64-apple-darwin.tar.gz"
      sha256 "cbf2187729e6e11507b501f2f73c5108601ebd183aeb827558159ab184a325f0"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.14/nak-x86_64-apple-darwin.tar.gz"
      sha256 "80b8ddc9c4556414df93c0dc83baa62ba921781bc4ed8e8f4d425ecc8136c575"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.14/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51a0c3c727425517996e514eba274bcca16dff01c5e7e135435c9eab4428bc4e"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.14/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d59e34167801a8deb89c38f4e8a69e0c17124555ee09321807da773233edf225"
    end
  end

  def install
    bin.install "nak"
  end

  test do
    assert_match "nak #{version}", shell_output("#{bin}/nak --version")
  end
end
