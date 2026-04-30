class Tg < Formula
  desc "macOS Telegram 聊天记录读取 CLI 工具"
  homepage "https://github.com/xiaotianxt/tg"
  url "https://github.com/xiaotianxt/tg/releases/download/v1.1.12/tg-v1.1.12-darwin-arm64.tar.gz"
  version "1.1.12"
  sha256 "5b7d52d554fe4f9a1524e64617e4fa3a90f77529357ffdacb0121393a78aeecc"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "tg"
  end

  test do
    system bin/"tg", "--version"
  end
end
