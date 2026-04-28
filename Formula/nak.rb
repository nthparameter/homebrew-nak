class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.27"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.27/nak-aarch64-apple-darwin.tar.gz"
      sha256 "647fcf2bf6328c214f11677c7e7682b6cc690adf60ac75235618d45561e59eed"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.27/nak-x86_64-apple-darwin.tar.gz"
      sha256 "bf63ea56591b91cdfa5d048cefd0f08eefd866632a09c3d85b713673ffd5239a"
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
