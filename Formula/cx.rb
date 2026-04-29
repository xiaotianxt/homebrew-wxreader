class Cx < Formula
  desc "Fast local Codex launcher, stdin wrapper, and slot manager"
  homepage "https://github.com/xiaotianxt/cx"
  url "https://github.com/xiaotianxt/cx/releases/download/v0.1.0/cx-v0.1.0-darwin-arm64.tar.gz"
  sha256 "85892a4f137f23328ad73365a7511d99661850e722111f78963d68046d01d7ed"
  license "MIT"
  version "0.1.0"

  depends_on arch: :arm64

  head do
    url "https://github.com/xiaotianxt/cx.git", branch: "main"
    depends_on "rust" => :build
  end

  def install
    if build.head?
      system "cargo", "install", "--bin", "cx", "--root", prefix, "."
    else
      bin.install "cx"
    end
  end

  test do
    system "#{bin}/cx", "--help"
  end
end
