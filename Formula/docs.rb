class Docs < Formula
  desc "Search your man pages with fzf"
  homepage "https://github.com/FGRCL/docs"
  url "https://github.com/FGRCL/docs/archive/refs/tags/0.0.3.tar.gz"
  sha256 "fb6ef71ce007ff9d4259a5100897f348d34b782e92c9f9f4885fdd9f70f05563"
  license ""

  depends_on "rust" => :build
  depends_on "fzf"
  depends_on "tealdeer"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
