class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.3.1/nak-aarch64-apple-darwin.tar.gz"
      sha256 "6e9813057073374be307102b8fa74cc2d2a65ffe99532033824dbd20306027c4"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.3.1/nak-x86_64-apple-darwin.tar.gz"
      sha256 "59519c2b45aeb888f79327f501c861854b16c1269f868c85fc88fd1259881cc8"
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
