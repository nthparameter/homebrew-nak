class Nak < Formula
  desc "A terminal-based text editor with optional GUI"
  homepage "https://github.com/nthparameter/nak"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.2.1/nak-aarch64-apple-darwin.tar.gz"
      sha256 "cc00d292949d042b285d98fc404019660ca3404ade1f9200459ff830b68ad859"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.2.1/nak-x86_64-apple-darwin.tar.gz"
      sha256 "3f1a79216a3a9eccf6e439a2608ddd3a57536db7a5cf61a01c88a666ec13699d"
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
