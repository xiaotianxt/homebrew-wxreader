class Cx < Formula
  desc "Fast local Codex launcher, stdin wrapper, and slot manager"
  homepage "https://github.com/xiaotianxt/cx"
  url "https://github.com/xiaotianxt/cx/releases/download/v0.1.1/cx-v0.1.1-darwin-arm64.tar.gz"
  sha256 "85d16313e664831a65174877c363b104cea1f2c38c7e58c468f39300cd903079"
  license "MIT"
  version "0.1.1"

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
