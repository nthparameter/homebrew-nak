class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.8/nak-aarch64-apple-darwin.tar.gz"
      sha256 "9f4599ef831662acff0fa78df746eb7ab0a84a5a5683dc9769cb2b550bc44f81"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.8/nak-x86_64-apple-darwin.tar.gz"
      sha256 "26b6a4fd40bc2fee6dfc20dac98932c7505f540c830e8288b872032d8ddc20a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.8/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4093db806879570c9d72b14a2b7d2d6f4dafdc02a1bf486bc002cfe0d04bac11"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.8/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ed6ffe4490f0a0503a920c2f62583f55936bef22e31316da32fdc6a1e969e6b"
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
