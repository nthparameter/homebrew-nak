class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.32"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.32/nak-aarch64-apple-darwin.tar.gz"
      sha256 "c6e019dcc07efdeae2974814bd651654499e1b8f691bad13eee8d3bb01522e60"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.32/nak-x86_64-apple-darwin.tar.gz"
      sha256 "ca3c5753324c10c5b38c6f96833ee4840dd49ef02a7f02e2f8661ae53c63dd11"
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
