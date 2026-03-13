class Nak < Formula
  desc "A terminal-based text editor"
  homepage "https://github.com/nthparameter/nak"
  version "0.0.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.15/nak-aarch64-apple-darwin.tar.gz"
      sha256 "fb63c6c5f4f00f767dda9fc7a5122bfc54a8fed8a45a106fb155bfb507a2f4fe"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.15/nak-x86_64-apple-darwin.tar.gz"
      sha256 "583f9c1303849ab44caa82b74a519cd1363f39d8e2053fdec09966d69d2ab842"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.15/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e76542dd4940e4d4e4f9ea2d6e3dae6d91adbba9b82768d61374815c33a6f67"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.15/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b693e16f33c5094f211c7a9d1ea9d5f6c64566e2fc80755b703236a7b06c32fb"
    end
  end

  def install
    bin.install "nak"
  end

  test do
    assert_match "nak #{version}", shell_output("#{bin}/nak --version")
  end
end
