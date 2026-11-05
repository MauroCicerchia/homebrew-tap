class Macchiato < Formula
  desc "Animate a coffee cup while caffeinate keeps your Mac awake"
  homepage "https://github.com/MauroCicerchia/macchiato"
  url "https://github.com/MauroCicerchia/macchiato/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"
  head "https://github.com/MauroCicerchia/macchiato.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "bin/macchiato"
    man1.install "man/macchiato.1"
  end

  test do
    assert_match(/^macchiato \d+\.\d+\.\d+$/, shell_output("#{bin}/macchiato --version"))
    # Without a terminal, macchiato hands over to caffeinate and exits cleanly.
    system bin/"macchiato", "-t", "1"
  end
end
