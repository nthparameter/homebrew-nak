class Nak < Formula
  desc "A terminal-based text editor"
  homepage "https://github.com/nthparameter/nak"
  version "0.0.10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.10/nak-aarch64-apple-darwin.tar.gz"
      sha256 "f3c0061134155c65f2fab79dd0cbfb8ef6ec8b4f5167bfb9db005d9022f2b656"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.10/nak-x86_64-apple-darwin.tar.gz"
      sha256 "9e689abf8ec79d6b46033909662574c923be202cd6f261914b5ee8af75233a2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.10/nak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8fe1e8974a7562899b0fdc3aa9e0fbb40359ead6c53af060ddd7806c0bdbcf0"
    else
      url "https://github.com/nthparameter/homebrew-nak/releases/download/v0.0.10/nak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "819d15a6b320d285367ad753cae13e1c10a35a6c2bd164fcb0b2de0efc1040ff"
    end
  end

  def install
    bin.install "nak"
  end

  test do
    assert_match "nak #{version}", shell_output("#{bin}/nak --version")
  end
end
