class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.14"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.14/nak-aarch64-apple-darwin.tar.gz"
      sha256 "f2897b9bc61f89ae9c16f204ef29ddbb45ebec999039ad7c3fa3ea8b0b7e90fd"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.14/nak-x86_64-apple-darwin.tar.gz"
      sha256 "4c9bb186c4ca3ec8528adb896932c81dbf69decba7397ce3fa1702d0c4b3b1ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.14/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b32196ece8f35d95808882da459503ed4160cdeaa4e5c9910402c881defe03c1"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.14/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c90df3fedef29776f529b61f98de39c24bad93b0ef6de53fdd4188dded19169c"
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
