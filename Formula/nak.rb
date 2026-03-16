class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.0.16"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.16/nak-aarch64-apple-darwin.tar.gz"
      sha256 "9fd77513bbfcad12471056e3f9777ceec6d0561efc83ed8b6a89c82e9e24064e"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.16/nak-x86_64-apple-darwin.tar.gz"
      sha256 "6bb71d6bc3f9c8d3d4f4dba7f65d15bb9b6e8fd2e3957d95c1c39e32d4f35f7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.16/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edb52b7d8ceca779f8c004480eeb378c30f186234ed795407e150633639cab17"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.16/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0a503e9da95372c85232ecbb722cbd993fad68620f2b87ff460750ea7630fb7"
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
