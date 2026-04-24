class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.25"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.25/nak-aarch64-apple-darwin.tar.gz"
      sha256 "243c469e47ae1160f29933ee38675a998bca804b247bb4ad086b417f85373953"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.25/nak-x86_64-apple-darwin.tar.gz"
      sha256 "a7b2cb2f84c2f44a3f66808da2e02e34ce6dcc91b085069f2b53c93c364854b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.25/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7e53368cb3a3256a59af6e2e6fed5d9588b0d6e38267820994efdb6d771edef"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.25/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf4308cb2e6605c1817ee1b430b02c7e17a9edfe04b5cb911062593c699cd7ec"
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
