class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.2.0/nak-aarch64-apple-darwin.tar.gz"
      sha256 "7eefac60bc08cfcc4eeb35ab40f06be5147b926fa44422b74c8feef699827da0"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.2.0/nak-x86_64-apple-darwin.tar.gz"
      sha256 "44b0c13da8f79f2e98828abaa4286b73e99fb3e3f924977860feb738ed00a0e5"
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
