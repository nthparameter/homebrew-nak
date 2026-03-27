class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.10/nak-aarch64-apple-darwin.tar.gz"
      sha256 "4ecd317e662a3ba0989bd348f03414495da0244608239b648f78643f118341f6"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.10/nak-x86_64-apple-darwin.tar.gz"
      sha256 "8cf48bc9053a0da84dd2b2f4033d66b389347da89efc589944c9f250448bfdf1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.10/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aaf5c1ee8a36fa74675356761c443d2a2a3317c3ea5641535850f3f5eb625bf1"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.10/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "993d207b3afdf8755527d0eb508741b1fb5a805d8278a1ffcbea5c4d31e5e4f9"
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
