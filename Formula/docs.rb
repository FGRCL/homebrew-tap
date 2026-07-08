class Docs < Formula
  desc "Search your man pages with fzf"
  homepage "https://github.com/FGRCL/docs"
  url "https://github.com/FGRCL/docs/archive/refs/tags/0.0.3.tar.gz"
  sha256 "bde1594125d5ac188cde5af52fee54221b463c4d1f419d9781eb3e2ba16ad6aa"
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
