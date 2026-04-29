class Cx < Formula
  desc "Fast local Codex launcher, stdin wrapper, and slot manager"
  homepage "https://github.com/xiaotianxt/cx"
  url "https://github.com/xiaotianxt/cx/releases/download/v0.1.0/cx-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "85892a4f137f23328ad73365a7511d99661850e722111f78963d68046d01d7ed"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "cx"
  end

  test do
    system "#{bin}/cx", "--help"
  end
end
