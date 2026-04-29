class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.28"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.28/nak-aarch64-apple-darwin.tar.gz"
      sha256 "868feb650b8926ae988b442bdced380c8476cc4de131cae95fb08afc5669fbad"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.28/nak-x86_64-apple-darwin.tar.gz"
      sha256 "9777d5cdde9cd4a29930bdc3059f40acc06f503d9ea2c99fed6f186a2e1a7a43"
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
