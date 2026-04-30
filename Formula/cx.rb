class Cx < Formula
  desc "Fast local Codex launcher, stdin wrapper, and slot manager"
  homepage "https://github.com/xiaotianxt/cx"
  url "https://github.com/xiaotianxt/cx/releases/download/v0.1.3/cx-v0.1.3-darwin-arm64.tar.gz"
  sha256 "edd04c51446ec2af25880b1763a384f8024eee91a771e492a57a916b82dd485b"
  license "MIT"
  version "0.1.3"

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
