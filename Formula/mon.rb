class Mon < Formula
  desc "AI-native Monarch Money CLI for structured local finance workflows"
  homepage "https://github.com/xiaotianxt/mon"
  url "https://github.com/xiaotianxt/mon/releases/download/v0.1.1/mon-v0.1.1-darwin-arm64.tar.gz"
  sha256 "66201e2136a47795c3e62e642135c1aeef8978ff29dbb1735b9e97a7cebd3ebd"
  license "MIT"
  version "0.1.1"

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
