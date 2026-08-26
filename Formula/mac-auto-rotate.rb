class MacAutoRotate < Formula
  desc "Rotate a MacBook display from its SPU motion sensor"
  homepage "https://github.com/ZimengXiong/macAutoRotate"
  url "https://github.com/ZimengXiong/macAutoRotate/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7eaeaa192b316cac55543ca5cd6556430e60d23dddbfd7b2b5891561ae5afa1a"
  license "MIT"

  depends_on "rust" => :build
  depends_on "displayplacer"
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/mac-auto-rotate", "--help"
  end
end
