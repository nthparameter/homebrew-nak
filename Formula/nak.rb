class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.0/nak-aarch64-apple-darwin.tar.gz"
      sha256 "1e94f3ec090658f9bfd3a4135f06e20f191cdb8bb0fa06cdc4b30ab9d2b28be2"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.0/nak-x86_64-apple-darwin.tar.gz"
      sha256 "3eb92b970bf02f89b5a0e7a2eab2750238a2c0c93dafeeaf4c7880c503dc3b3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.0/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a571df38fb9213b3f92bd6d5cb43c06432fdb2c858d9f5f17199d14bb9524d8e"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.1.0/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5004c09d7174edfc7578be34f17caff497575667efc6273458200148bc203567"
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
