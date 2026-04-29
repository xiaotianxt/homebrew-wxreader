class Mon < Formula
  desc "AI-native Monarch Money CLI for structured local finance workflows"
  homepage "https://github.com/xiaotianxt/mon"
  url "https://github.com/xiaotianxt/mon/releases/download/v0.2.0/mon-v0.2.0-darwin-arm64.tar.gz"
  sha256 "e80e1885f0dacfc2d2fa330afc7c715b94ff35a858aa8fc435c0e6706d7734b1"
  license "MIT"
  version "0.2.0"

  depends_on arch: :arm64

  head do
    url "https://github.com/xiaotianxt/mon.git", branch: "main"
    depends_on "rust" => :build
  end

  def install
    if build.head?
      system "cargo", "install", "--bin", "mon", "--root", prefix, "."
    else
      bin.install "mon"
    end
  end

  test do
    system "#{bin}/mon", "--help"
  end
end
