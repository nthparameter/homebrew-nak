class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.24"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.24/nak-aarch64-apple-darwin.tar.gz"
      sha256 "7c43f3186706df16aabe5118f7db60d2b19e4636788a611003ad3c068914b5c0"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.24/nak-x86_64-apple-darwin.tar.gz"
      sha256 "14e72f629eb991b43a3d58dd4bffed5e3bc8b6970dc1794cef19691a9370fdde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.24/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a201786ed5f2541f03a1c2099bef52803fefa687acc1301362864b693490183"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.24/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bdec1c42b647766d36cbed016bbf0c9a35436008cd96b9376a9f44bb7ec8d92d"
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
