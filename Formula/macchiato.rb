class Macchiato < Formula
  desc "Animate a coffee cup while caffeinate keeps your Mac awake"
  homepage "https://github.com/MauroCicerchia/macchiato"
  url "https://github.com/MauroCicerchia/macchiato/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on :macos

  def install
    bin.install "bin/macchiato"
  end

  test do
    system bin/"macchiato", "-t", "1"
  end
end
