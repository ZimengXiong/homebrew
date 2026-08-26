class MacAutoRotate < Formula
  desc "Rotate a MacBook display from its SPU motion sensor"
  homepage "https://github.com/ZimengXiong/macAutoRotate"
  url "https://github.com/ZimengXiong/macAutoRotate/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "5e48871edb1d2325c3548d3de854a2f03c4c42ff428382b481a238711190e64e"
  license "MIT"

  depends_on "rust" => :build
  depends_on "displayplacer"
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/macAutoRotate", "--help"
  end
end
