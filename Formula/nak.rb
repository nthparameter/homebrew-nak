class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.31"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.31/nak-aarch64-apple-darwin.tar.gz"
      sha256 "02fc8dadfe87a85b75c1034cf564176afcb076e78601339ed0730f13c2e63420"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.31/nak-x86_64-apple-darwin.tar.gz"
      sha256 "20ada92b9becc27047c5bbff88f1f2688aa042c13543f3337f1000e26def19bd"
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
