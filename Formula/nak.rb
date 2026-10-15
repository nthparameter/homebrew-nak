class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.3.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.3.3/nak-aarch64-apple-darwin.tar.gz"
      sha256 "734eba5ce41f8ab37faa5b5c12ed47de7e9c865352bb7595cd0a4e837685e6e7"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.3.3/nak-x86_64-apple-darwin.tar.gz"
      sha256 "fd763dd79af0116bc77ff1001eb0c48127eaf49be1573b605bc6eff932826cd3"
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
