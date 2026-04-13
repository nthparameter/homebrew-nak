class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.20"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.20/nak-aarch64-apple-darwin.tar.gz"
      sha256 "deb8464fac07f49595df0ce676bf95939f74eddc0c234111dc58624dfa9f31e7"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.20/nak-x86_64-apple-darwin.tar.gz"
      sha256 "19dbfa0350b31dd0d49d4301113a2cc42d8fcb5e7c559181591ea054419875ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.20/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "880b32b25a319a49a06e50fb7a5ab935a3d852b0635e58604685845ea83bd47b"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.20/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5418ef30363bac745994f94dc46e6380874b0b9894848947511e0521eaf13c69"
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
