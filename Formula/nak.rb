class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.3.2/nak-aarch64-apple-darwin.tar.gz"
      sha256 "375680550d9b48054c8bd47aef5650947d94dd3e5ec0e5a8a6e0781f6c04ed65"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.3.2/nak-x86_64-apple-darwin.tar.gz"
      sha256 "dad2663766e0021235e46bc53ba599deab0a2f3536b78f0f50bf0e74c315ac62"
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
