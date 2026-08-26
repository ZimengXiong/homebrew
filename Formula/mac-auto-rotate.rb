class MacAutoRotate < Formula
  desc "Rotate a MacBook display from its SPU motion sensor"
  homepage "https://github.com/ZimengXiong/macAutoRotate"
  url "https://github.com/ZimengXiong/macAutoRotate/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "09412afa1f9cad0dfed47c2bf0584e67304b68b501b068f045b89202a5383e65"
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
