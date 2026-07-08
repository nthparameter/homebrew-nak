class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.33"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.33/nak-aarch64-apple-darwin.tar.gz"
      sha256 "cc7ed6ade1bea17a84771bc10093108b9d9ad2bf7260d5c9b0c6bfc506f70f2a"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.33/nak-x86_64-apple-darwin.tar.gz"
      sha256 "bc42736520f94e01b77767bb633d0a4eeb47ae588e01b13f32144fcd4fe08d48"
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
