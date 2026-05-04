class Cx < Formula
  desc "Fast local Codex launcher, stdin wrapper, and slot manager"
  homepage "https://github.com/xiaotianxt/cx"
  url "https://github.com/xiaotianxt/cx/releases/download/v0.1.9/cx-v0.1.9-darwin-arm64.tar.gz"
  sha256 "da3747d97cddccab27ae4047e033186a9cf7f2f7e453c9f2317d251ccdba708d"
  license "MIT"
  version "0.1.9"

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
    generate_completions_from_executable(bin/"cx", "completions")
  end

  test do
    system "#{bin}/cx", "--help"
  end
end
