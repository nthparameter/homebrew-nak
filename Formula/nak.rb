class Nak < Formula
  desc "A terminal-based text editor"
  homepage "https://github.com/nthparameter/nak"
  version "0.0.11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.11/nak-aarch64-apple-darwin.tar.gz"
      sha256 "316e20950c1944ae5126143dcddd3c91f2ba3a5fc5db62b947b0ecc8c10e3418"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.11/nak-x86_64-apple-darwin.tar.gz"
      sha256 "67c19ccf9f14e15a984a4f0ecb5d6f623c7d635b032fd4481e140f014a4d6d3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.11/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c9dc6fbb7d41bfc8e8a2b46231890f2a403adb9984c99687937990463f09140"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.11/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e940c1575b73b89f7806bd74b7732a25e1d33aea0de3d013ecbd0008d0ea3489"
    end
  end

  def install
    bin.install "nak"
  end

  test do
    assert_match "nak #{version}", shell_output("#{bin}/nak --version")
  end
end
