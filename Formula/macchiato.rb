class Macchiato < Formula
  desc "Animate a coffee cup while caffeinate keeps your Mac awake"
  homepage "https://github.com/MauroCicerchia/macchiato"
  url "https://github.com/MauroCicerchia/macchiato/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "28c2535125a9e8959312e7f1bd72b3ca1ce9f9fed587a5f56915ae3582c9263f"
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
